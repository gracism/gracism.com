#!/bin/bash

# Build gracism from templates
mkdir -p output
cp -R -p images output
cp -R -p css output
cp -R -p data output
TEMPLATES='-p templates/google.mustache -p templates/t2.mustache -p templates/head.mustache -p templates/foot.mustache'
npx mustache ${TEMPLATES} data/thoughts.json templates/thoughts.mustache > output/thoughts.html
npx mustache ${TEMPLATES} data/index.json templates/index.mustache > output/index.html
npx mustache ${TEMPLATES} data/music.json templates/music.mustache > output/music.html
npx mustache ${TEMPLATES} data/things.json templates/things.mustache > output/things.html
