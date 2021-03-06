#!/bin/bash
LGTMDIR=~/.lgtm

alias imc='impbcopy -'
alias imp='pngpaste -'

function lgtm-convert() {
  convert \
    -resize 400x400 \
    -gravity center \
    -fill white \
    -stroke none \
    -strokewidth 20 \
    -font ${LGTMDIR}/fonts/Aileron-Black.otf \
    -pointsize 72 \
    -kerning 12 \
    -annotate +0+0 'LGTM' \
    -font ${LGTMDIR}/fonts/Aileron-Regular.otf \
    -pointsize 11 \
    -fill white \
    -kerning 6 \
    -annotate +0+52 'Looks Good To Me' \
    ${1:-"-"} -
}

function lgtm() {
  imp \
  | lgtm-convert \
  | imc \
  && echo Looks Good To Me!
}
