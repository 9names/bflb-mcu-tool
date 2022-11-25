#!/bin/bash

export GIT_AUTHOR_NAME="""bouffalolab"""
export GIT_AUTHOR_EMAIL="""jxtan@bouffalolab.com"""
export GIT_AUTHOR_DATE="$2"
export GIT_COMMITTER_NAME="""bouffalolab"""
export GIT_COMMITTER_EMAIL="""jxtan@bouffalolab.com"""
export GIT_COMMITTER_DATE="$2"
rm "*" -rf
tar -xvf ../bflb-mcu-tool-$1.tar.gz --strip-components=1
git add .
git commit -m """Release $1"""
git tag $1
