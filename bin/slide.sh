#!/bin/sh

SLIDESOURCE=~/acm/acm-paas/apps/keydown/public/acm
HTMLDIR=~/acm/acm-paas/public
DECK=acm

rvm gemset use jekyll

cd $SLIDESOURCE

keydown slides ${DECK}.md

cat ${DECK}.html | grep -v 'css/horizontal' > ${HTMLDIR}/${DECK}.html

cd ${HTMLDIR}

git add .
git commit -m "update"
git push
