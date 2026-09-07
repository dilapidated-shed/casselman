#!/bin/sh
set -eu

# Clone useful redistributable/open-source upstreams intact so their Git
# history, notices, and licenses remain attached. upstream/ is gitignored.

mkdir -p upstream

clone() {
    url=$1
    name=$2
    if [ ! -d "upstream/$name/.git" ]; then
        git clone "$url" "upstream/$name"
    fi
    printf '%-18s %s\n' "$name" "$(git -C "upstream/$name" rev-parse HEAD)"
}

# Historical MetaPost distribution. Upstream DISCLAIMER places the system,
# including doc/*, in the public domain.
clone https://github.com/classic-tools/MetaPost.git metapost

# Sergey Slyusarev's MetaPost implementation of Byrne's Euclid graphics.
# byrne.mp: GPL-3.0-or-later; book sources in byrne-euclid: CC-BY-SA-4.0,
# with MetaPost/initials code GPL-3.0-or-later.
clone https://github.com/jemmybutton/byrne-latex.git byrne-latex
clone https://github.com/jemmybutton/byrne-euclid.git byrne-euclid

# Jyh-Ming Lien, Approximate Convex Decomposition of 2-D polygons. MIT.
clone https://github.com/jmlien/acd2d.git acd2d

# Asymptote technical vector graphics language. Upstream README says source is
# LGPL-3.0-or-later unless explicitly noted otherwise.
clone https://github.com/vectorgraphics/asymptote.git asymptote

# xpost PostScript interpreter. Upstream identifies BSD 3-Clause licensing.
clone https://github.com/luser-dr00g/xpost.git xpost

cat <<'EOF'

Upstreams are deliberately not committed here. Inspect the license and notices
inside each clone before copying an individual file into vendor/.
EOF
