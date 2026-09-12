# Historical MetaPost specimens

Upstream: https://github.com/classic-tools/MetaPost

The upstream `DISCLAIMER` expressly places the historical MetaPost system in the public domain and lists `doc/*` among the included documentation. `NOTICE` is also preserved here so the historical attribution and warranty language are not lost.

Selected files in this directory are intended as small, readable language-design specimens rather than a replacement for the upstream tree.

| local file | upstream path | upstream blob SHA |
| --- | --- | --- |
| `examples.mp` | `doc/examples.mp` | `0e2a8dc0a65aa450003f76113b8975d2d0a1c03d` |
| `figs.mp` | `doc/figs.mp` | `67c86a098d1d8ecca5dbed02b12785cd8fac71e0` |
| `mpgraph.mp` | `doc/mpgraph.mp` | `883e57067c696bb7280cec5445b1132610ce0a47` |

Why these three:

- `examples.mp`: constraints on points, paths, interpolation, intersections, loops, labels, boxes, state-machine diagrams, and curve geometry.
- `figs.mp`: a very small specimen showing reusable procedures, boxes, pictures, shifts, fills, and paths.
- `mpgraph.mp`: graph construction, coordinate systems, log scales, data-driven paths, labels, fills, and formatted numeric output.

For the complete historical source tree, run `scripts/fetch_upstreams.sh` and inspect `upstream/metapost/`.
