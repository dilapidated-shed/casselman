# Old-web mathematical drawing sweep

Initial sweep date: 2026-09-07.

This file records promising source-bearing pages found while looking specifically for mathematical programs rather than rendered figures. Inclusion means “worth preserving as a reference,” not “permission to redistribute.”

| source | useful artifact | current handling |
| --- | --- | --- |
| Bill Casselman, UBC | *Mathematical Illustrations* PostScript examples/packages; PiScript | personal-fetch/link only because manual site restricts further reproduction |
| Nathan Reading | computational Coxeter-plane/noncrossing `.ps` supplement | link only; no explicit redistribution license found |
| Harvard Mathematics | small raw `.ps` programs (`hexagon`, sieve, Life, etc.) | link only; no explicit code license found |
| John R. Stembridge | A2/B2/G2 graph-paper PostScript + Maple affine-hyperplane generator | link only; no explicit license found |
| D. R. Wilkins, Trinity College Dublin | MetaPost figure source for Newton's *Quadrature of Curves* | link only pending rights statement for modern edition/source |
| Michael La Croix | hand-written PostScript mathematical illustration; thesis appendices contain torus/double-torus programs | link only; no redistribution license found |
| Donald Knuth | editable PostScript / MetaPost source accompanying papers | per-item rights; link first |
| Alan G. Isaac | *PostScript Drawing for the Sciences* and old-web resource index | link only pending explicit booklet license |
| MIT SICP problem sets | higher-order Scheme curve/drawing language | link only because stated reuse permission is conditional/non-commercial and tied to SICP |
| Toby Thurston | *Drawing with MetaPost*, many self-contained programs | distribution permitted under Open Publication License 1.0+; canonical package indexed |
| Syracuse MetaPost archive | introductions, examples, Hobby manual figures | site says CC BY-NC-SA 4.0 unless otherwise noted; canonical archive indexed |
| classic-tools/MetaPost | original MetaPost examples and documentation | selected exact blobs mirrored; upstream public-domain statement retained |
| Sergey Slyusarev | `byrne-latex`, `byrne-euclid` MetaPost geometry | intact upstream clones; GPLv3+ / CC-BY-SA terms retained upstream |
| Jyh-Ming Lien | ACD2D polygon decomposition with PostScript output | intact upstream clone; MIT |
| Asymptote | programmable technical vector graphics | intact upstream clone; LGPL-3.0-or-later unless noted otherwise |
| xpost | PostScript interpreter implementation | intact upstream clone; BSD 3-Clause identified upstream |

## High-value follow-up targets

These deserve a later, more focused provenance pass:

1. **Michael La Croix thesis appendix** — extract an index of the PostScript programs and the mathematical operation each demonstrates, without republishing the code unless permission is found.
2. **Knuth source links** — enumerate individual MetaPost source files and record rights item by item.
3. **Toby Thurston CTAN package** — identify the actual `.mp` source distribution and import selected specimens with the Open Publication License attached, if the package layout makes that clean.
4. **Syracuse MetaPost** — enumerate the small examples and their per-file notices before any CC-BY-NC-SA copy.
5. **Alan G. Isaac's outbound index** — chase David Maxwell, Luc Devroye, Don Lancaster, Peter Weingartner, Jim Land, and the MIT PostScript archive for source-bearing mathematical programs.
6. **Book/thesis archaeology** — search appendices and author home directories for literal PostScript/MetaPost listings, not merely `.ps` versions of papers.

## Selection rule

Prefer a 2 KB source file that computes a meaningful geometric construction over a 20 MB generated EPS. Generated figures are still useful as provenance or visual oracles, but the corpus is primarily for human-inspectable programs and language design.
