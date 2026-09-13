#!/bin/bash
jssg posts/ docs/
D=$(date)
git add docs posts && git add -u && git commit -sm "New post $D" && git push

