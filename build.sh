#!/bin/bash

# Build gracism from templates
# Only builds one page, so far
cp -R -p images output
cp -R -p css output
TEMPLATES='-p templates/google.mustache -p templates/t2.mustache -p templates/head.mustache -p templates/foot.mustache'
mustache ${TEMPLATES} data/thoughts.json templates/thoughts.mustache > output/thoughts.html
mustache ${TEMPLATES} data/index.json templates/index.mustache > output/index.html
mustache ${TEMPLATES} data/music.json templates/music.mustache > output/music.html
mustache ${TEMPLATES} data/things.json templates/things.mustache > output/things.html
