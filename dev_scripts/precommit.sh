#!/bin/bash
# Query the modified *.mmd files
git diff --cached --name-only --diff-filter=ACM | grep .mmd$ | xargs npx mmdc -t dark -i
git add ./**/**.mmd.svg
