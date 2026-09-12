#!/bin/sh
set -eu

# Bill Casselman's Mathematical Illustrations site permits a user to make one
# copy for personal use and restricts further reproduction without permission.
# This script therefore writes only to personal/casselman/, which is gitignored.
# Do not commit or redistribute the downloaded files without permission from the
# copyright holder.

base='https://personal.math.ubc.ca/~cass/graphics/manual'
out='personal/casselman'
mkdir -p "$out"

fetch() {
    url=$1
    name=$2
    printf '%s\n' "fetch $name"
    curl --fail --location --silent --show-error "$url" --output "$out/$name"
}

fetch "$base/code/beginning.txt" beginning.txt
fetch "$base/code/draw-arrow.txt" draw-arrow.txt
fetch "$base/code/curved-arrow.txt" curved-arrow.txt
fetch "$base/code/e-zoom.txt" e-zoom.txt
fetch "$base/code/cube1.txt" cube1.txt
fetch "$base/code/cube2.txt" cube2.txt
fetch "$base/code/cube3.txt" cube3.txt
fetch "$base/code/cube4.txt" cube4.txt
fetch "$base/code/cube5.txt" cube5.txt
fetch "$base/code/cube6.txt" cube6.txt
fetch "$base/code/sphere1.txt" sphere1.txt
fetch "$base/code/sphere-gouraud.txt" sphere-gouraud.txt
fetch "$base/code/doughnut.txt" doughnut.txt
fetch "$base/code/triad.txt" triad.txt
fetch "$base/code/box.txt" box.txt
fetch "$base/code/arrows.inc" arrows.inc
fetch "$base/code/lines.inc" lines.inc
fetch "$base/code/hodgman-sutherland.inc" hodgman-sutherland.inc
fetch "$base/code/mkpath.inc" mkpath.inc
fetch "$base/transform.inc" transform.inc
fetch "$base/code/hull.inc" hull.inc
fetch "$base/code/ps3d.inc" ps3d.inc
fetch "$base/code/bsp.inc" bsp.inc
fetch "$base/code/polyhedra.inc" polyhedra.inc
fetch "$base/code/psinc" psinc
fetch "$base/code/zoom.inc" zoom.inc
fetch "$base/code/hs.inc" hs.inc
fetch "$base/code/stack.inc" stack.inc

cat > "$out/SOURCE.txt" <<'EOF'
Bill Casselman
Mathematical Illustrations: A Manual of Geometry and PostScript
https://personal.math.ubc.ca/~cass/graphics/manual/

Downloaded by scripts/fetch_casselman_personal.sh for personal study.
The source site states that one personal copy is permitted and that further
reproduction requires express permission. This directory is intentionally
excluded from Git.
EOF

printf '%s\n' "saved Casselman personal-use corpus under $out"
