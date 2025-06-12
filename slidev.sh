#!/bin/bash

case "$1" in
  build)
    for i in $(ls slides/*.md | sed 's/slides\/\|\.md//g') 
      do slidev build ./slides/$i.md -d --base /slidev/$i/ --out ../dist/$i/
    done
  ;;
  --open)
  slidev --open ./slides/$2.md
  # "${@:2}"
  ;;
  export)
  mkdir -p pdf
    for i in $(ls slides/*.md | sed 's/slides\/\|\.md//g') 
      do slidev export ./slides/$i.md --output ./pdf/$i.pdf --timeout 1000000
    done
  ;;
  *)
  ;;
esac