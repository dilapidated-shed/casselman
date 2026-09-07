# Bill Casselman: mathematical drawing sources

Bill Casselman's work is the anchor for this collection because it exposes mathematical illustration as programming rather than as GUI operation or opaque renderer output.

Canonical entry points:

- *Mathematical Illustrations: A Manual of Geometry and PostScript*: https://personal.math.ubc.ca/~cass/graphics/manual/
- PiScript: https://personal.math.ubc.ca/~cass/piscript/
- PostScript course/teaching material: https://personal.math.ubc.ca/~cass/

## Redistribution boundary

The *Mathematical Illustrations* resource permits a user to make one personal copy and says further reproduction requires express permission. Therefore this repository deliberately does **not** contain copies of Casselman's manual code.

Run `scripts/fetch_casselman_personal.sh` to retrieve the indexed examples into `personal/casselman/`. That directory is ignored by Git.

## Why these examples matter

The code ranges from tiny path construction to enough machinery to expose the interesting layers of a drawing language:

- points and current position
- straight and curved paths
- arrows and line styles
- affine/projective transformations
- clipping
- convex hulls
- three-dimensional transforms and projection
- hidden-surface / BSP work
- polyhedra
- interpolation and shading
- reusable PostScript procedures

This gives a progression from a visible primitive such as “move here, draw there” to mathematical algorithms that still result in an inspectable picture.

## Indexed manual code

### Elementary drawing

- `beginning.txt` — simple diagrams
- `draw-arrow.txt` — straight arrows
- `curved-arrow.txt` — curved arrows
- `e-zoom.txt` — zooming / coordinate transformation

### 3-D examples

- `cube1.txt` … `cube6.txt`
- `sphere1.txt`
- `sphere-gouraud.txt`
- `doughnut.txt`
- `triad.txt`
- `box.txt`

### Reusable packages

- `arrows.inc`
- `lines.inc`
- `hodgman-sutherland.inc`
- `mkpath.inc`
- `transform.inc`
- `hull.inc`
- `ps3d.inc`
- `bsp.inc`
- `polyhedra.inc`
- `psinc`
- `zoom.inc`
- `hs.inc`
- `stack.inc`

The complete canonical URLs and provenance notes are in `provenance/SOURCES.md`.

## PiScript

PiScript is also worth keeping in view because it deliberately retains a PostScript-like drawing model while moving the surrounding computation into Python. It is useful for comparing:

1. direct PostScript as a programming language;
2. a conventional host language that emits PostScript;
3. a future typed mathematical-drawing interface in Idriç.

No explicit PiScript redistribution license was found during the initial source pass, so its archives remain link-only here pending a license check of the archives themselves.
