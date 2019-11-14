#!/bin/bash
echo 'Unpushed commits at:';
cd ~/ && find . -type d -maxdepth 3 -iname '.git' -exec sh -c 'cd "${0}/../" && git status | grep -q "is ahead of" && pwd' "{}" \;
