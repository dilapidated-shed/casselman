# Scattered mathematical PostScript and MetaPost

The older mathematical web contains useful source programs that were never organized as modern software repositories. This catalog keeps those sources discoverable without assuming that public readability grants redistribution rights.

## Nathan Reading — Coxeter geometry

Supplement: https://www.mat.univie.ac.at/~slc/wpapers/s63reading.html

Reading's Coxeter-plane supplement is unusually valuable because the `.ps` files are intentionally computational. He explains that the programs exploit PostScript as a complete programming language; the corresponding expanded PDF representation can be hundreds of times larger.

The corpus includes classical/noncrossing diagrams for types D, E, F, and H, plus alternate E/F/H layouts. See `provenance/SOURCES.md` for every direct `.ps` URL.

**Status:** link only; no explicit redistribution license found in the initial pass.

## Harvard Mathematics — small PostScript programs

Index: https://abel.math.harvard.edu/computing/ps/

Particularly useful because the examples are small enough to read as programs rather than merely use as final figures:

- `example.ps`
- `hexagon.ps`
- `erastotenes.ps`
- `sticker.ps`
- `scoresheet.ps` — credited to Noam Elkies
- `life.ps`

The same page points toward PostScript-generating work by Curtis T. McMullen.

**Status:** link only; no explicit collection-wide code license found.

## John R. Stembridge — Coxeter graph paper

Archive: https://websites.umich.edu/~jrs/archive.html

The A2/B2/G2 PostScript graph-paper files are paired with Maple source (`affhyp`) for plotting affine hyperplanes. This is a useful two-language specimen: mathematical generator on one side, drawable PostScript on the other.

**Status:** link only; no explicit redistribution license found.

## Donald Knuth — MetaPost and editable graphics

- https://cs.stanford.edu/~knuth/graphics.html
- https://cs.stanford.edu/~knuth/musings.html

Knuth's pages expose editable graphics and, for some papers, MetaPost illustration source. The `musings` index specifically identifies downloadable source for illustrations associated with work such as *Dancing Links* and technical illustrations written in MetaPost.

**Status:** per-item rights vary; link first and mirror only after checking the individual item.

## Alan G. Isaac — PostScript Drawing for the Sciences

https://subversion.american.edu/aisaac/wp/psdraw.html

Besides being a useful tutorial in its own right, Isaac's page acts as an index into the older PostScript ecosystem: Casselman, David Maxwell, Luc Devroye, Don Lancaster, Peter Weingartner, Jim Land, xpost, and the MIT PostScript archive.

MIT archive: https://stuff.mit.edu/afs/sipb/contrib/postscript/

**Status:** Isaac tutorial link-only pending an explicit license; follow individual linked projects' own licenses.

## MetaPost historical examples

Upstream: https://github.com/classic-tools/MetaPost

Unlike most of the old-web material above, the historical distribution carries an explicit public-domain statement covering the MetaPost system and `doc/*`. A small set of examples is therefore mirrored under `vendor/metapost/` with the original notice and exact source identifiers.

The examples are particularly relevant because MetaPost gives names and equations directly to geometry: points, paths, interpolation constraints, curve direction, intersection, transformations, graph data, fills, labels, and state.

## Sergey Slyusarev — Byrne's Euclid in MetaPost

- https://github.com/jemmybutton/byrne-latex
- https://github.com/jemmybutton/byrne-euclid

This is a modern substantial geometry program rather than a tiny demo. `byrne.mp` implements the graphical language behind Oliver Byrne's Euclid and is GPLv3-or-later. It is kept as an intact upstream clone through `scripts/fetch_upstreams.sh` rather than flattened into this repository.

## Search directions

Good future searches are not limited to the word “PostScript.” Useful source tends to hide under:

- book title + `figures` / `source` / `.ps` / `.eps`
- mathematician home directories
- old course directories
- journal “supplement” pages
- `MetaPost`, `metafont`, `PSTricks`, `pic`, `troff`, `gnuplot`, Maple/Mathematica exporters
- Coxeter, knot, tiling, polyhedron, hyperbolic, Dynkin, graph-paper, geometry, topology
- source accompanying papers rather than source accompanying software

The important distinction is whether the file is itself meaningful code. A 20 MB generated EPS is archival evidence; a 2 KB program that constructs a Coxeter diagram is a language-design specimen.
