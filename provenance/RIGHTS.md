# Rights map

This is a mixed-source research corpus. There is deliberately no claim that one blanket license applies to everything mentioned here.

## Files actually mirrored in this repository

`vendor/metapost/` contains selected files from the historical `classic-tools/MetaPost` distribution. Its upstream `DISCLAIMER` places the MetaPost system in the public domain and explicitly includes `doc/*`; the exact upstream `DISCLAIMER` and `NOTICE` are retained beside the examples.

The expected upstream Git blob IDs are checked by `scripts/check_vendor_git_blobs.sh`.

## Sources linked but not copied

Casselman's *Mathematical Illustrations* code, Nathan Reading's PostScript supplement, the Harvard PostScript examples, John Stembridge's graph-paper files, D. R. Wilkins's Newton MetaPost source, Michael La Croix's thesis programs, and other old-web sources are catalogued by URL unless an explicit reusable license has been established for the individual material.

In particular, Casselman's manual site permits a personal copy but restricts further reproduction without express permission. `scripts/fetch_casselman_personal.sh` therefore writes only into gitignored `personal/`.

## Repositories fetched intact but not copied into Git

`scripts/fetch_upstreams.sh` clones these into gitignored `upstream/`:

- `classic-tools/MetaPost` — historical public-domain statement in upstream `DISCLAIMER`.
- `jemmybutton/byrne-latex` — `byrne.mp` GPL-3.0-or-later.
- `jemmybutton/byrne-euclid` — README states book sources CC-BY-SA-4.0 and MetaPost/initials code GPL-3.0-or-later.
- `jmlien/acd2d` — MIT.
- `vectorgraphics/asymptote` — upstream README says source files are LGPL-3.0-or-later unless explicitly noted otherwise.
- `luser-dr00g/xpost` — upstream identifies BSD 3-Clause licensing.

Keeping these as intact clones avoids detaching individual files from their history, copyright notices, and license texts.

## Repository-authored catalog text

The catalog, provenance notes, scripts, and later Idriç experiments are repository-authored material unless a file says otherwise. No top-level license for that new material is asserted by this provenance pass; choosing one is a separate repository-owner decision and must not overwrite or relabel upstream rights.
