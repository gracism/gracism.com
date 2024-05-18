#!/bin/bash

# Build gracism from templates
cp -R -p images docs
cp -R -p css docs
TEMPLATES='-p templates/google.mustache -p templates/t2.mustache -p templates/head.mustache -p templates/foot.mustache'
mustache ${TEMPLATES} data/thoughts.json templates/thoughts.mustache > docs/thoughts.html
mustache ${TEMPLATES} data/index.json templates/index.mustache > docs/index.html
mustache ${TEMPLATES} data/music.json templates/music.mustache > docs/music.html
mustache ${TEMPLATES} data/things.json templates/things.mustache > docs/things.html
