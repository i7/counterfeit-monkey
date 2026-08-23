#!/bin/bash
# Build a release gblorb of Counterfeit Monkey with Inform 7 6M62 (9.3).
#
# Tool locations (override any of these):
#   NI          path to ni
#   INFORM6     path to inform6
#   CBLORB      path to cBlorb
#   INTERNAL    Inform Internal directory (must match the 6M62 toolchain)
#   INFORM_EXTERNAL   extensions / user materials nest (ni -external)
#   INFORM_APP        macOS: Inform.app bundle (used only to derive defaults)
#   CBLORB_OS         cBlorb platform flag: osx | unix | windows
#
# Typical locations (see https://intfiction.org/t/50108):
#   macOS (Inform 1.82 / language 10.x with retrospective 6M62):
#     INFORM_APP=/Applications/Inform.app
#     → Contents/MacOS/6M62/{ni,cBlorb}, Contents/MacOS/inform6
#     → Contents/Resources/retrospective/6M62
#   Linux (install-inform7.sh defaults):
#     NI/INFORM6/CBLORB under /usr/local/libexec (or on PATH)
#     INTERNAL=/usr/local/share/inform7/Internal
#     INFORM_EXTERNAL=$HOME/Inform
#   Windows (classic IDE layout; run this script from Git Bash / MSYS):
#     "…/Inform 7/Compilers/{ni,inform6,cBlorb}"
#     "…/Inform 7/Internal"
#     INFORM_EXTERNAL="$HOME/Documents/Inform"

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

PROJ="$REPO_ROOT/Counterfeit Monkey.inform"
RELEASE_GBLORB="$REPO_ROOT/Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb"

uname_s="$(uname -s 2>/dev/null || echo unknown)"
case "$uname_s" in
	Darwin) host_os=osx ;;
	Linux) host_os=unix ;;
	MINGW*|MSYS*|CYGWIN*|Windows_NT) host_os=windows ;;
	*) host_os=unix ;;
esac

# --- defaults by platform ---------------------------------------------------

case "$host_os" in
	osx)
		INFORM_APP="${INFORM_APP:-/Applications/Inform.app}"
		: "${NI:=$INFORM_APP/Contents/MacOS/6M62/ni}"
		: "${INFORM6:=$INFORM_APP/Contents/MacOS/inform6}"
		: "${CBLORB:=$INFORM_APP/Contents/MacOS/6M62/cBlorb}"
		: "${INTERNAL:=$INFORM_APP/Contents/Resources/retrospective/6M62}"
		: "${INFORM_EXTERNAL:=$HOME/Library/Inform}"
		: "${CBLORB_OS:=osx}"
		;;
	unix)
		: "${NI:=$(command -v ni 2>/dev/null || echo /usr/local/libexec/ni)}"
		: "${INFORM6:=$(command -v inform6 2>/dev/null || echo /usr/local/libexec/inform6)}"
		: "${CBLORB:=$(command -v cBlorb 2>/dev/null || echo /usr/local/libexec/cBlorb)}"
		: "${INTERNAL:=/usr/local/share/inform7/Internal}"
		: "${INFORM_EXTERNAL:=$HOME/Inform}"
		: "${CBLORB_OS:=unix}"
		;;
	windows)
		# Prefer Git Bash / MSYS paths; PROGRAMFILES may be unset in some shells.
		pf="${PROGRAMFILES:-/c/Program Files}"
		inform7_root="${INFORM7_ROOT:-$pf/Inform 7}"
		: "${NI:=$inform7_root/Compilers/ni}"
		: "${INFORM6:=$inform7_root/Compilers/inform6}"
		: "${CBLORB:=$inform7_root/Compilers/cBlorb}"
		: "${INTERNAL:=$inform7_root/Internal}"
		: "${INFORM_EXTERNAL:=$HOME/Documents/Inform}"
		: "${CBLORB_OS:=windows}"
		;;
esac

EXTERNAL="$INFORM_EXTERNAL"

# --- validate ---------------------------------------------------------------

missing=0
for path in "$NI" "$INFORM6" "$CBLORB" "$INTERNAL" "$PROJ/Source/story.ni"; do
	if [ ! -e "$path" ]; then
		echo "Missing required path: $path" >&2
		missing=1
	fi
done
if [ "$missing" -ne 0 ]; then
	echo >&2
	echo "Set NI, INFORM6, CBLORB, and/or INTERNAL (and INFORM_EXTERNAL if needed)." >&2
	echo "On macOS you can set INFORM_APP to an Inform.app bundle instead." >&2
	exit 1
fi

case "$CBLORB_OS" in
	osx|unix|windows) ;;
	*)
		echo "CBLORB_OS must be osx, unix, or windows (got: $CBLORB_OS)" >&2
		exit 1
		;;
esac

mkdir -p "$EXTERNAL"

# --- build ------------------------------------------------------------------

echo "==> ni (6M62, release)"
echo "    NI=$NI"
echo "    INTERNAL=$INTERNAL"
echo "    EXTERNAL=$EXTERNAL"
"$NI" -release -noprogress \
	-internal "$INTERNAL" \
	-external "$EXTERNAL" \
	-project "$PROJ"

echo "==> inform6 (release Glulx)"
echo "    INFORM6=$INFORM6"
"$INFORM6" -E2w~S~DG \
	"$PROJ/Build/auto.inf" \
	"$PROJ/Build/output.ulx"

echo "==> cBlorb (${CBLORB_OS})"
echo "    CBLORB=$CBLORB"
# Mac omits a platform flag (cBlorb defaults to -osx). Avoid empty-array
# expansion here: macOS ships Bash 3.2, which breaks "${arr[@]}" under set -u.
if [ "$CBLORB_OS" = osx ]; then
	"$CBLORB" \
		"$PROJ/Release.blurb" \
		"$PROJ/Build/output.gblorb"
else
	"$CBLORB" "-$CBLORB_OS" \
		"$PROJ/Release.blurb" \
		"$PROJ/Build/output.gblorb"
fi

echo
echo "Release gblorb: $RELEASE_GBLORB"
ls -lh "$RELEASE_GBLORB"
