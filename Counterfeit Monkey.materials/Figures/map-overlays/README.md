# Map overlay assets (extracted for Glk map-document work)

Coordinates: `marker-positions.tsv`.

## City (Atlantis)

| File | Role |
|------|------|
| `map-base.png` | Geography only: blue land `#007ADF`, black sea, coast anti-alias, white **shore dots** |
| `map-labels.png` | All typography / icons (park, streets, FISH MARKET, winding path text, etc.), RGBA |
| `map-marker-at.png` | Yellow `@` (26×27) |
| `map-marker-at-winding.png` | `@` rotated for the winding path |

**Normal room** (e.g. High Street) — RMSE ≈ 0.0008:

1. `map-base.png`
2. `map-labels.png`
3. `map-marker-at.png`

**Crawlspace** (labels above `@`) — RMSE ≈ 0.003:

1. `map-base.png`
2. `map-marker-at.png` at `+492+304`
3. `map-labels.png`

## Boat

| File | Role |
|------|------|
| `map-marker-star.png` | Yellow star (42×40) |
| `boat-starless/boat-base-hull.png` | Yacht with cabin roof fill removed |
| `boat-starless/boat-roof.png` | Translucent black roof (alpha ≈ `1 − gray/255`) |
| `boat-starless/boat-base-deck.png` | Flattened hull+roof (fore / sunning) |
| `boat-starless/boat-base-cabin.png` | Shared cabin interior |

**Navigation:** hull → star `@ +440+445` → roof (RMSE ≈ 0.0018).

## Already present

- Compass: `Figures/white-*.png`, `blue-*.png`, `center-squiggle.png`
- Padding: `map-extend-*.png`, `map-navigation-extend-*.png`
