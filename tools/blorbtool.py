#!/usr/bin/env python

# blorbtool.py: A (semi-)multifunctional Blorb utility
# Created by Andrew Plotkin (erkyrath@eblong.com)
# Last updated: June 12, 2017
# This script is in the public domain.

# When listing chunks, you'll see output that looks like:
#   'GLUL' (232192 bytes, start 60)
# "60" means that the IFF chunk starts at byte 60 in the blorb file. There's
# always an eight-byte header, so the actual Glulx data file starts at byte
# 68 (and is then 232192 bytes long).
#
# For AIFF chunks, you'll see:
#   'FORM'/'AIFF' (8536+8 bytes, start 324266)
# The AIFF data implicitly includes the eight-byte header, which is why the
# length says "+8". Start at byte 324266 and read 8544 bytes.

# We use the print() function for Python 2/3 compatibility
from __future__ import print_function

# We use the Py2 raw_input() function. In Py3 there is no such function,
# but we define a back-polyfill. (I'm lazy.)
try:
    raw_input
except NameError:
    raw_input = input

import sys
import os
import optparse
import re
import collections
import struct
import base64
import json

from chunk import Chunk
try:
    import readline
except:
    pass

try:
    # Python 3.3 and up
    os_replace = os.replace
except AttributeError:
    if (os.name != 'nt'):
        # Older Python (on Unix)
        os_replace = os.rename
    else:
        # On Windows, os.rename can't replace an existing file.
        def os_replace(src, dst):
            try:
                os.remove(dst)
            except:
                pass
            os.rename(src, dst)

popt = optparse.OptionParser(usage='blorbtool.py BLORBFILE [ command ]')

popt.add_option('-n', '--new',
                action='store_true', dest='newfile',
                help='create a new blorb file instead of loading one in')
popt.add_option('-o', '--output',
                action='store', dest='output', metavar='BLORBFILE',
                help='blorb file to write to (if requested)')
popt.add_option('-f', '--force',
                action='store_true', dest='force',
                help='overwrite files without confirming')
popt.add_option('-v', '--verbose',
                action='store_true', dest='verbose',
                help='verbose stack traces on error')
popt.add_option('-l', '--commands',
                action='store_true', dest='listcommands',
                help='list all commands (and exit)')

(opts, args) = popt.parse_args()

def dict_append(map, key, val):
    ls = map.get(key)
    if (not ls):
        ls = []
        map[key] = ls
    ls.append(val)

def confirm_input(prompt):
    ln = raw_input(prompt+' >')
    if (ln.lower().startswith('y')):
        return True

class BlorbChunk:
    def __init__(self, blorbfile, typ, start, len, formtype=None):
        self.blorbfile = blorbfile
        self.type = typ
        self.start = start
        self.len = len
        self.formtype = formtype
        self.literaldata = None
        self.filedata = None
        self.filestart = None
        
    def __repr__(self):
        return '<BlorbChunk %s at %d, len %d>' % (typestring(self.type), self.start, self.len)
    
    def data(self, max=None):
        if (self.literaldata):
            if (max is not None):
                return self.literaldata[0:max]
            else:
                return self.literaldata
        if (self.filedata):
            fl = open(self.filedata, 'rb')
            if (self.filestart is not None):
                fl.seek(self.filestart)
            if (max is not None):
                dat = fl.read(max)
            else:
                dat = fl.read()
            fl.close()
            return dat
        self.blorbfile.formchunk.seek(self.start)
        toread = self.len
        if (max is not None):
            toread = min(self.len, max)
        return self.blorbfile.formchunk.read(toread)

    def describe(self):
        if (not self.formtype):
            return '%s (%d bytes, start %d)' % (typestring(self.type), self.len, self.start)
        else:
            return '%s/%s (%d+8 bytes, start %d)' % (typestring(self.type), typestring(self.formtype), self.len, self.start)
    
    def display(self):
        print('* %s' % (self.describe(),))
        if (self.type == b'RIdx'):
            # Index chunk
            dat = self.data()
            (subdat, dat) = (dat[:4], dat[4:])
            num = struct.unpack('>I', subdat)[0]
            print('%d resources:' % (num,))
            while (dat):
                (subdat, dat) = (dat[:12], dat[12:])
                subls = struct.unpack('>4c2I', subdat)
                usage = b''.join(subls[0:4])
                print('  %s %d: starts at %d' % (typestring(usage), subls[-2], subls[-1]))
        elif (self.type == b'IFmd'):
            # Metadata chunk
            dat = self.data()
            print(dat.decode('utf-8'))
        elif (self.type == b'Fspc'):
            # Frontispiece chunk
            dat = self.data()
            if (len(dat) != 4):
                print('Warning: invalid contents!')
            else:
                num = struct.unpack('>I', dat[0:4])[0]
                print('Frontispiece is pict number', num)
        elif (self.type == b'RDes'):
            # Resource description chunk
            dat = self.data()
            (subdat, dat) = (dat[:4], dat[4:])
            count = struct.unpack('>I', subdat)[0]
            print('%d entries:' % (count,))
            for ix in range(count):
                if (len(dat) < 12):
                    print('Warning: contents too short!')
                    break
                (subdat, dat) = (dat[:12], dat[12:])
                subls = struct.unpack('>4c2I', subdat)
                restype = b''.join(subls[0:4])
                strlen = subls[-1]
                num = subls[-2]
                if (len(dat) < strlen):
                    print('Warning: contents too short!')
                    break
                (subdat, dat) = (dat[:strlen], dat[strlen:])
                print('  %s resource %d: "%s"' % (typestring(restype), num, subdat.decode('utf-8')))
            if (len(dat) > 0):
                print('Warning: contents too long!')
        elif (self.type == b'APal'):
            # Adaptive palette
            dat = self.data()
            if (len(dat) % 4 != 0):
                print('Warning: invalid contents!')
            else:
                ls = []
                while (dat):
                    (subdat, dat) = (dat[:4], dat[4:])
                    num = struct.unpack('>I', subdat)[0]
                    ls.append(str(num))
                print('Picts using adaptive palette:', ' '.join(ls))
        elif (self.type == b'Loop'):
            # Looping
            dat = self.data()
            if (len(dat) % 8 != 0):
                print('Warning: invalid contents!')
            else:
                while (dat):
                    (subdat, dat) = (dat[:8], dat[8:])
                    (num, count) = struct.unpack('>II', subdat)
                    print('Sound %d repeats %d times' % (num, count))
        elif (self.type == b'RelN'):
            # Release number
            dat = self.data()
            if (len(dat) != 2):
                print('Warning: invalid contents!')
            else:
                num = struct.unpack('>H', dat)[0]
                print('Release number', num)
        elif (self.type == b'SNam'):
            # Story name (obsolete)
            dat = self.data()
            if (len(dat) % 2 != 0):
                print('Warning: invalid contents!')
            else:
                ls = []
                while (dat):
                    (subdat, dat) = (dat[:2], dat[2:])
                    num = struct.unpack('>H', subdat)[0]
                    ls.append(chr(num))
                print('Story name:', ''.join(ls))
        elif (self.type in (b'TEXT', b'ANNO', b'AUTH', b'(c) ')):
            dat = self.data()
            print(dat.decode())
        elif (self.type == b'Reso'):
            # Resolution chunk
            dat = self.data()
            if (len(dat)-24) % 28 != 0:
                print('Warning: invalid contents!')
            else:
                (subdat, dat) = (dat[:24], dat[24:])
                subls = struct.unpack('>6I', subdat)
                print('Standard window size %dx%d, min %dx%d, max %dx%d' % subls)
                while (dat):
                    (subdat, dat) = (dat[:28], dat[28:])
                    subls = struct.unpack('>7I', subdat)
                    print('Pict %d: standard ratio: %d/%d, min %d/%d, max %d/%d' % subls)
        else:
            dat = self.data(16)
            strdat = repr(dat)
            if (re.match('[a-z][\'\"]', strdat)):
                strdat = strdat[1:]
            if (len(dat) == self.len):
                print('contents: %s' % (strdat,))
            else:
                print('beginning: %s' % (strdat,))

class BlorbFile:
    def __init__(self, filename, outfilename=None):
        self.chunks = []
        self.chunkmap = {}
        self.chunkatpos = {}
        self.usages = []
        self.usagemap = {}
        
        self.filename = filename
        self.outfilename = outfilename
        if (not self.outfilename):
            self.outfilename = self.filename

        if (not self.filename):
            # No loading; create an empty file.
            self.file = None
            self.formchunk = None
            self.changed = True
            chunk = BlorbChunk(self, b'RIdx', -1, 4)
            chunk.literaldata = struct.pack('>I', 0)
            self.add_chunk(chunk, None, None, 0)
            return
            
        self.changed = False

        self.file = open(filename, 'rb')
        formchunk = Chunk(self.file)
        self.formchunk = formchunk
        
        if (formchunk.getname() != b'FORM'):
            raise Exception('This does not appear to be a Blorb file.')
        formtype = formchunk.read(4)
        if (formtype != b'IFRS'):
            raise Exception('This does not appear to be a Blorb file.')
        formlen = formchunk.getsize()
        while formchunk.tell() < formlen:
            chunk = Chunk(formchunk)
            start = formchunk.tell()
            size = chunk.getsize()
            formtype = None
            if chunk.getname() == b'FORM':
                formtype = chunk.read(4)
            subchunk = BlorbChunk(self, chunk.getname(), start, size, formtype)
            self.chunks.append(subchunk)
            chunk.skip()
            chunk.close()

        for chunk in self.chunks:
            self.chunkatpos[chunk.start] = chunk
            dict_append(self.chunkmap, chunk.type, chunk)

        # Sanity checks. Also get the usage list.
        
        ls = self.chunkmap.get(b'RIdx')
        if (not ls):
            raise Exception('No resource index chunk!')
        elif (len(ls) != 1):
            print('Warning: too many resource index chunks!')
        else:
            chunk = ls[0]
            if (self.chunks[0] is not chunk):
                print('Warning: resource index chunk is not first!')
            dat = chunk.data()
            numres = struct.unpack('>I', dat[0:4])[0]
            if (numres*12+4 != chunk.len):
                print('Warning: resource index chunk has wrong size!')
            for ix in range(numres):
                subdat = dat[4+ix*12 : 16+ix*12]
                typ = struct.unpack('>4c', subdat[0:4])
                typ = b''.join(typ)
                num = struct.unpack('>I', subdat[4:8])[0]
                start = struct.unpack('>I', subdat[8:12])[0]
                subchunk = self.chunkatpos.get(start)
                if (not subchunk):
                    print('Warning: resource (%s, %d) refers to a nonexistent chunk!' % (typestring(typ), num))
                self.usages.append( (typ, num, subchunk) )
                self.usagemap[(typ, num)] = subchunk

    def close(self):
        if (self.formchunk):
            self.formchunk.close()
            self.formchunk = None
        if (self.file):
            self.file.close()
            self.file = None

    def sanity_check(self):
        if (len(self.usages) != len(self.usagemap)):
            print('Warning: internal mismatch (usages)!')
        if (len(self.chunks) != len(self.chunkatpos)):
            print('Warning: internal mismatch (chunks)!')

    def chunk_position(self, chunk):
        try:
            return self.chunks.index(chunk)
        except:
            return None

    def save_if_needed(self):
        if self.changed:
            try:
                self.save()
            except CommandError as ex:
                print(str(ex))

    def canonicalize(self):
        self.sanity_check()
        try:
            indexchunk = self.chunkmap[b'RIdx'][0]
        except:
            raise CommandError('There is no index chunk, so this cannot be a legal blorb file.')
        indexchunk.len = 4 + 12*len(self.usages)
        pos = 12
        for chunk in self.chunks:
            chunk.savestart = pos
            pos = pos + 8 + chunk.len
            if (pos % 2):
                pos = pos+1
        self.usages.sort(key=lambda tup:tup[2].savestart)
        ls = []
        ls.append(struct.pack('>I', len(self.usages)))
        for (typ, num, chunk) in self.usages:
            ls.append(typ)
            ls.append(struct.pack('>II', num, chunk.savestart))
        dat = b''.join(ls)
        if (len(dat) != indexchunk.len):
            print('Warning: index chunk length does not match!')
        indexchunk.literaldata = dat

    def save(self, outfilename=None):
        if (outfilename):
            self.outfilename = outfilename
        if (not self.changed and (self.outfilename == self.filename)):
            raise CommandError('No changes need saving.')
        if (not self.outfilename):
            raise CommandError('No pathname supplied for saving.')        
        if (os.path.exists(self.outfilename) and not opts.force):
            if (not confirm_input('File %s exists. Rewrite?' % (self.outfilename,))):
                print('Cancelled.')
                return
        self.canonicalize()
        tmpfilename = self.outfilename + '~TEMP'
        fl = open(tmpfilename, 'wb')
        fl.write(b'FORM----IFRS')
        pos = 12
        for chunk in self.chunks:
            fl.write(chunk.type)
            fl.write(struct.pack('>I', chunk.len))
            pos = pos+8
            dat = chunk.data()
            fl.write(dat)
            pos = pos+len(dat)
            if (pos % 2):
                fl.write(b'\0')
                pos = pos+1
        fl.seek(4)
        fl.write(struct.pack('>I', pos-8))
        fl.close()
        os_replace(tmpfilename, self.outfilename)
        print('Wrote file:', self.outfilename)
        return self.outfilename

    def delete_chunk(self, delchunk):
        self.chunks = [ chunk for chunk in self.chunks if (chunk is not delchunk) ]
        ls = self.chunkmap[delchunk.type]
        ls = [ chunk for chunk in ls if (chunk is not delchunk) ]
        if (ls):
            self.chunkmap[delchunk.type] = ls
        else:
            self.chunkmap.pop(delchunk.type)
        self.chunkatpos.pop(delchunk.start)
        self.usages = [ tup for tup in self.usages if (tup[2] is not delchunk) ]
        ls = [ key for (key,val) in self.usagemap.items() if (val is delchunk) ]
        for key in ls:
            self.usagemap.pop(key)
        self.changed = True

    def add_chunk(self, chunk, use=None, num=None, pos=None):
        if (pos is None):
            self.chunks.append(chunk)
        else:
            self.chunks.insert(pos, chunk)
        self.chunkatpos[chunk.start] = chunk
        dict_append(self.chunkmap, chunk.type, chunk)
        if (use is not None):
            self.usages.append( (use, num, chunk) )
            self.usagemap[(use,num)] = chunk
        self.changed = True
                               
class CommandError(Exception):
    pass

class BlorbTool:
    def show_commands():
        print('blorbtool commands:')
        print()
        print('list -- list all chunks')
        print('index -- list all resources in the index chunk')
        print('display -- display contents of all chunks')
        print('display TYPE -- contents of chunk(s) of that type')
        print('display USE NUM -- contents of chunk by use and number (e.g., "display Exec 0")')
        print('export TYPE FILENAME -- export the chunk of that type to a file')
        print('export USE NUM FILENAME -- export a chunk by use and number')
        print('import TYPE FILENAME -- import a file as a chunk of that type')
        print('import USE NUM TYPE FILENAME -- import a file as a resource of that use, number, and type')
        print('delete TYPE -- delete chunk(s) of that type')
        print('delete USE NUM -- delete chunk by use and number')
        print('giload DIRECTORY -- export the Exec and Pict chunks for use with Quixe')
        print('save -- write out changes')
        print('reload -- discard changes and reload existing blorb file')

    show_commands = staticmethod(show_commands)
        
    def __init__(self):
        self.is_interactive = False
        self.has_quit = False
        
    def set_interactive(self, val):
        self.is_interactive = val

    def quit_yet(self):
        return self.has_quit

    def handle(self, args=None):
        try:
            if (self.is_interactive):
                args = raw_input('>').split()
            if (not args):
                return
            argname = args.pop(0)
            if (argname in self.aliasmap):
                argname = self.aliasmap[argname]
            cmd = getattr(self, 'cmd_'+argname, None)
            if (not cmd):
                raise CommandError('Unknown command: ' + argname)
                return
            cmd(args)
        except KeyboardInterrupt:
            # EOF or interrupt. Pass it on.
            raise
        except EOFError:
            # EOF or interrupt. Pass it on.
            raise
        except CommandError as ex:
            print(str(ex))
        except Exception as ex:
            # Unexpected exception: print it.
            print(ex.__class__.__name__+':', str(ex))
            if (opts.verbose):
                raise

    def parse_int(self, val, label=''):
        if (label):
            label = label+': '
        try:
            return int(val)
        except:
            raise CommandError(label+'integer required')

    def parse_chunk_type(self, val, label=''):
        if (label):
            label = label+': '
        if len(val) > 4:
            raise CommandError(label+'chunk type must be 1-4 characters')
        return val.ljust(4).encode()

    aliasmap = { '?':'help', 'q':'quit', 'write':'save', 'restart':'reload', 'restore':'reload' }

    def cmd_quit(self, args):
        if (args):
            raise CommandError('usage: quit')
        self.has_quit = True

    def cmd_help(self, args):
        if (args):
            raise CommandError('usage: help')
        self.show_commands()

    def cmd_list(self, args):
        if (args):
            raise CommandError('usage: list')
        print(len(blorbfile.chunks), 'chunks:')
        for chunk in blorbfile.chunks:
            print('  %s' % (chunk.describe(),))

    def cmd_index(self, args):
        if (args):
            raise CommandError('usage: index')
        print(len(blorbfile.usages), 'resources:')
        for (use, num, chunk) in blorbfile.usages:
            print('  %s %d: %s' % (typestring(use), num, chunk.describe()))

    def cmd_display(self, args):
        if (not args):
            ls = blorbfile.chunks
        elif (len(args) == 1):
            typ = self.parse_chunk_type(args[0], 'display')
            ls = [ chunk for chunk in blorbfile.chunks if chunk.type == typ ]
            if (not ls):
                raise CommandError('No chunks of type %s' % (typestring(typ),))
        elif (len(args) == 2):
            use = self.parse_chunk_type(args[0], 'display')
            num = self.parse_int(args[1], 'display (second argument)')
            chunk = blorbfile.usagemap.get( (use, num) )
            if (not chunk):
                raise CommandError('No resource with usage %s, number %d' % (typestring(use), num))
            ls = [ chunk ]
        else:
            raise CommandError('usage: display | display TYPE | display USE NUM')
        for chunk in ls:
            chunk.display()

    def cmd_export(self, args):
        if (len(args) == 2):
            typ = self.parse_chunk_type(args[0], 'export')
            ls = [ chunk for chunk in blorbfile.chunks if chunk.type == typ ]
            if (not ls):
                raise CommandError('No chunks of type %s' % (typestring(typ),))
            if (len(ls) != 1):
                raise CommandError('%d chunks of type %s' % (len(ls), typestring(typ),))
            chunk = ls[0]
        elif (len(args) == 3):
            use = self.parse_chunk_type(args[0], 'export')
            num = self.parse_int(args[1], 'export (second argument)')
            chunk = blorbfile.usagemap.get( (use, num) )
            if (not chunk):
                raise CommandError('No resource with usage %s, number %d' % (typestring(use), num))
        else:
            raise CommandError('usage: export TYPE FILENAME | export USE NUM FILENAME')
        outfilename = args[-1]
        if (outfilename == blorbfile.filename):
            raise CommandError('You can\'t export a chunk over the original blorb file!')
        if (os.path.exists(outfilename) and not opts.force):
            if (not confirm_input('File %s exists. Overwrite?' % (outfilename,))):
                print('Cancelled.')
                return
        outfl = open(outfilename, 'wb')
        if (chunk.formtype and chunk.formtype != b'FORM'):
            # For an AIFF file, we must include the FORM/length header.
            # (Unless it's an overly nested AIFF.)
            outfl.write(b'FORM')
            outfl.write(struct.pack('>I', chunk.len))
        outfl.write(chunk.data())
        finallen = outfl.tell()
        outfl.close()
        print('Wrote %d bytes to %s.' % (finallen, outfilename))

    def cmd_import(self, args):
        origchunk = None
        if (len(args) == 2):
            typ = self.parse_chunk_type(args[0], 'import')
            use = None
            num = None
            ls = [ chunk for chunk in blorbfile.chunks if chunk.type == typ ]
            if (ls):
                origchunk = ls[0]
        elif (len(args) == 4):
            use = self.parse_chunk_type(args[0], 'import')
            num = self.parse_int(args[1], 'import (second argument)')
            typ = self.parse_chunk_type(args[2], 'import (third argument)')
            origchunk = blorbfile.usagemap.get( (use, num) )
        else:
            raise CommandError('usage: import TYPE FILENAME | import USE NUM TYPE FILENAME')
        infilename = args[-1]
        if (infilename == blorbfile.filename):
            raise CommandError('You can\'t import the original blorb file as a chunk!')
        fl = open(infilename, 'rb')
        filestart = None
        formtype = None
        dat = fl.read(5)
        if (dat[0:4] == b'FORM' and ord(dat[4]) < 0x20):
            # This is an AIFF file, and must be embedded
            filestart = 8
            fl.seek(8, 0)
            formtype = fl.read(4)
            if (typ != b'FORM'):
                # We accept the formtype as a synonym here, if the user
                # got it right.
                if (typ != formtype):
                    raise CommandError('This IFF file has form type \'%s\', not \'%s\'.' % (formtype, typ))
                typ = b'FORM'
        fl.seek(0, 2)
        filelen = fl.tell()
        fl.close()
        if (filestart):
            filelen = filelen - 8
        fakestart = min(list(blorbfile.chunkatpos.keys()) + [0]) - 1
        if origchunk:
            # Replace existing chunk
            pos = blorbfile.chunk_position(origchunk)
            blorbfile.delete_chunk(origchunk)
        else:
            pos = None
        chunk = BlorbChunk(blorbfile, typ, fakestart, filelen)
        chunk.filedata = infilename
        if (filestart):
            chunk.filestart = filestart
            chunk.formtype = formtype
        blorbfile.add_chunk(chunk, use, num, pos)
        if pos is None:
            print('Added chunk, length %d' % (filelen,))
        else:
            print('Replaced chunk, new length %d' % (filelen,))
            
    def cmd_giload(self, args):
        prefix = ''
        if (len(args) == 1):
            outdirname = args[0]
        elif (len(args) == 2):
            outdirname = args[0]
            prefix = args[1]
        else:
            raise CommandError('usage: giload DIRECTORY | giload DIRECTORY PREFIX')
        if (not (os.path.exists(outdirname) and os.path.isdir(outdirname))):
            raise CommandError('Not a directory: %s' % (outdirname))
        
        chunk = blorbfile.usagemap.get( (b'Exec', 0) )
        if (not chunk):
            raise CommandError('No resource with usage %s, number %d' % (typestring(use), num))
        chunkdat = chunk.data()
        if (chunk.formtype and chunk.formtype != b'FORM'):
            chunkdat = b'FORM' + struct.pack('>I', chunk.len) + chunkdat
        outfl = open(os.path.join(outdirname, 'game.ulx.js'), 'w')
        chunkdatenc = base64.b64encode(chunkdat).decode()
        outfl.write('$(document).ready(function() {\n')
        outfl.write("  GiLoad.load_run(null, '%s', 'base64');\n" % (chunkdatenc,))
        outfl.write('});\n')
        outfl.close()

        alttexts = {}
        ls = blorbfile.chunkmap.get(b'RDes')
        if (ls):
            chunk = ls[0]
            alttexts = analyze_resourcedescs(chunk)
        
        outfl = open(os.path.join(outdirname, 'resourcemap.js'), 'w')
        outfl.write('/* resourcemap.js generated by blorbtool.py */\n')
        outfl.write('StaticImageInfo = {\n')
        usages = [ (num, chunk) for (use, num, chunk) in blorbfile.usages if (use == b'Pict') ]
        usages.sort()   # on num
        first = True
        wholemap = collections.OrderedDict()
        for (num, chunk) in usages:
            try:
                (suffix, size) = analyze_pict(chunk)
            except Exception as ex:
                print('Error on Pict chunk %d: %s' % (num, ex))
                continue
            picfilename = 'pict-%d.%s' % (num, suffix)
            map = collections.OrderedDict()
            map['image'] = num
            map['url'] = os.path.join(prefix, picfilename)
            if (b'Pict', num) in alttexts:
                map['alttext'] = alttexts.get( (b'Pict',num) ).decode('utf-8')
            map['width'] = size[0]
            map['height'] = size[1]
            wholemap['pict-%d' % (num,)] = map
            indexdat = json.dumps(map, indent=2)
            if (first):
                first = False
            else:
                outfl.write(',\n')
            outfl.write('%d: %s\n' % (num, indexdat))
            outfl2 = open(os.path.join(outdirname, picfilename), 'wb')
            if (chunk.formtype and chunk.formtype != b'FORM'):
                outfl2.write(b'FORM')
                outfl2.write(struct.pack('>I', chunk.len))
            outfl2.write(chunk.data())
            outfl2.close()
        outfl.write('};\n')
        outfl.close()
            
        outfl = open(os.path.join(outdirname, 'resourcemap.json'), 'w')
        json.dump(wholemap, outfl, indent=2)
        outfl.write('\n')
        outfl.close()
        
        print('Wrote Quixe-compatible data to directory "%s".' % (outdirname,))
            
    def cmd_delete(self, args):
        if (len(args) == 1):
            typ = self.parse_chunk_type(args[0], 'delete')
            ls = [ chunk for chunk in blorbfile.chunks if chunk.type == typ ]
            if (not ls):
                raise CommandError('No chunks of type %s' % (typestring(typ),))
        elif (len(args) == 2):
            use = self.parse_chunk_type(args[0], 'delete')
            num = self.parse_int(args[1], 'delete (second argument)')
            chunk = blorbfile.usagemap.get( (use, num) )
            if (not chunk):
                raise CommandError('No resource with usage %s, number %d' % (typestring(use), num))
            ls = [ chunk ]
        else:
            raise CommandError('usage: delete TYPE | delete USE NUM')
        for chunk in ls:
            blorbfile.delete_chunk(chunk)
        print('Deleted %d chunk%s' % (len(ls), ('' if len(ls)==1 else 's')))

    def cmd_reload(self, args):
        global blorbfile
        if (args):
            raise CommandError('usage: reload')
        filename = blorbfile.filename
        blorbfile.close()
        blorbfile = BlorbFile(filename)
        print('Reloaded %s.' % (filename,))
        
    def cmd_save(self, args):
        global blorbfile
        if (len(args) == 0):
            outfilename = None
        elif (len(args) == 1):
            outfilename = args[0]
        else:
            raise CommandError('usage: save | save FILENAME')
        filename = blorbfile.save(outfilename)
        if (filename):
            # Reload, so that the blorbfile's Chunk (and its chunks)
            # refer to the new file. (The reloaded blorbfile will have
            # changed == False, too.)
            blorbfile.close()
            blorbfile = BlorbFile(filename)

    def cmd_dump(self, args):
        print('### chunks:', blorbfile.chunks)
        print('### chunkmap:', blorbfile.chunkmap)
        print('### chunkatpos:', blorbfile.chunkatpos)
        print('### usages:', blorbfile.usages)
        print('### usagemap:', blorbfile.usagemap)

# Some utility functions.

def typestring(dat):
    return "'" + dat.decode() + "'"

def bytes_to_intarray(dat):
    if (bytes is str):
        # Python 2
        return [ ord(val) for val in dat ]
    else:
        # Python 3
        return [ val for val in dat ]

def intarray_to_bytes(arr):
    if (bytes is str):
        # Python 2
        return b''.join([ chr(val) for val in arr ])
    else:
        # Python 3
        return bytes(arr)
    
def analyze_resourcedescs(chunk):
    res = {}
    dat = chunk.data()
    (subdat, dat) = (dat[:4], dat[4:])
    count = struct.unpack('>I', subdat)[0]
    for ix in range(count):
        if (len(dat) < 12):
            break
        (subdat, dat) = (dat[:12], dat[12:])
        subls = struct.unpack('>4c2I', subdat)
        usage = b''.join(subls[0:4])
        strlen = subls[-1]
        num = subls[-2]
        if (len(dat) < strlen):
            break
        (subdat, dat) = (dat[:strlen], dat[strlen:])
        res[(usage, num)] = subdat
    return res
    
def analyze_pict(chunk):
    if (chunk.type == b'JPEG'):
        size = parse_jpeg(chunk.data())
        return ('jpeg', size)
    if (chunk.type == b'PNG '):
        size = parse_png(chunk.data())
        return ('png', size)
    raise Exception('Unrecognized Pict type: %s' % (chunk.type,))

def parse_png(dat):
    dat = bytes_to_intarray(dat)
    pos = 0
    sig = dat[pos:pos+8]
    pos += 8
    if sig != [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A]:
        raise Exception('PNG signature does not match')
    while pos < len(dat):
        clen = (dat[pos] << 24) | (dat[pos+1] << 16) | (dat[pos+2] << 8) | dat[pos+3]
        pos += 4
        ctyp = intarray_to_bytes(dat[pos:pos+4])
        pos += 4
        #print('Chunk:', ctyp, 'len', clen)
        if ctyp == b'IHDR':
            width  = (dat[pos] << 24) | (dat[pos+1] << 16) | (dat[pos+2] << 8) | dat[pos+3]
            pos += 4
            height = (dat[pos] << 24) | (dat[pos+1] << 16) | (dat[pos+2] << 8) | dat[pos+3]
            pos += 4
            return (width, height)
        pos += clen
        pos += 4
    raise Exception('No PNG header block found')

def parse_jpeg(dat):
    dat = bytes_to_intarray(dat)
    #print('Length:', len(dat))
    pos = 0
    while pos < len(dat):
        if dat[pos] != 0xFF:
            raise Exception('marker is not FF')
        while dat[pos] == 0xFF:
            pos += 1
        marker = dat[pos]
        pos += 1
        if marker == 0x01 or (marker >= 0xD0 and marker <= 0xD9):
            #print('FF%02X*' % (marker,))
            continue
        clen = (dat[pos] << 8) | dat[pos+1]
        #print('FF%02X, len %d' % (marker, clen))
        if (marker >= 0xC0 and marker <= 0xCF and marker != 0xC8):
            if clen <= 7:
                raise Exception('SOF block is too small')
            bits = dat[pos+2]
            height = (dat[pos+3] << 8) | dat[pos+4]
            width  = (dat[pos+5] << 8) | dat[pos+6]
            return (width, height)
        pos += clen
    raise Exception('SOF block not found')

# Actual work begins here.

if (opts.listcommands):
    BlorbTool.show_commands()
    sys.exit(-1)
    
if (not args and not opts.newfile):
    popt.print_help()
    sys.exit(-1)

filename = None
if (args):
    filename = args.pop(0)
    if (opts.newfile and not opts.output):
        opts.output = filename
        filename = None
        
try:
    blorbfile = BlorbFile(filename, opts.output)
except Exception as ex:
    print(ex.__class__.__name__+':', str(ex))
    if (opts.verbose):
        raise
    sys.exit(-1)
    
# If args exist, execute them as a command. If not, loop grabbing and
# executing commands until we discover that the user has executed Quit.
# (The handler catches all exceptions except KeyboardInterrupt.)
try:
    tool = BlorbTool()
    if (args):
        tool.set_interactive(False)
        tool.handle(args)
        blorbfile.sanity_check()
        blorbfile.save_if_needed()
    else:
        tool.set_interactive(True)
        while (not tool.quit_yet()):
            tool.handle()
            blorbfile.sanity_check()
        blorbfile.save_if_needed()
        print('<exiting>')
except KeyboardInterrupt:
    print('<interrupted>')
except EOFError:
    print('<eof>')

blorbfile.close()
