#!/bin/bash
jssg posts/ docs/
git add docs posts && git add -u && git commit -sm "New post" && git push

