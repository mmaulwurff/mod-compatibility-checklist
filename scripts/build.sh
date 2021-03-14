#!/bin/bash

set -e

filename=build/mod-compatibility-checklist-$(git describe --abbrev=0 --tags).pk3

mkdir -p build
rm  -f $filename
zip -R $filename "*.md" "*.txt" "*.zs"
gzdoom $filename "$@"
