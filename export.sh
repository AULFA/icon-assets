#!/bin/sh

if [ $# -ne 2 ]
then
  echo "usage: in.svg out.png" 1>&2
  exit 1
fi

IN="$1"
shift
OUT="$1"
shift

exec inkscape \
  --without-gui \
  --export-width=96 \
  --export-png="${OUT}" \
  "${IN}"
