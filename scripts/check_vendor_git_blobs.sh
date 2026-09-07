#!/bin/sh
set -eu

check() {
    path=$1
    expected=$2
    actual=$(git hash-object "$path")
    if [ "$actual" != "$expected" ]; then
        printf 'FAIL  %s\n  expected %s\n  actual   %s\n' "$path" "$expected" "$actual" >&2
        exit 1
    fi
    printf 'PASS  %s  %s\n' "$path" "$actual"
}

# These expected IDs are the blob IDs in classic-tools/MetaPost.
check vendor/metapost/DISCLAIMER 2646e73ecd1eb2a4676aef36b9b2e2f49b65e794
check vendor/metapost/NOTICE 3116de9947116aca1fb4f7bdeefc0d0e586bddcb
check vendor/metapost/examples.mp 0e2a8dc0a65aa450003f76113b8975d2d0a1c03d
check vendor/metapost/figs.mp 67c86a098d1d8ecca5dbed02b12785cd8fac71e0
check vendor/metapost/mpgraph.mp 883e57067c696bb7280cec5445b1132610ce0a47
