#!/bin/bash

fileName="src/proc"

echo "*** first pass ****"
echo ""
pdflatex -halt-on-error -output-directory aux "${fileName}.tex" | grep -i -e "warning" -e "error" -e "missing" -e "fatal" -e "undefined" -e "runaway"
echo ""
echo "*** bibtex run ****"
echo ""
bibtex aux/proc
echo ""
echo "*** second pass ****"
echo ""
pdflatex -halt-on-error -output-directory aux "${fileName}.tex" | grep -i -e "warning" -e "error" -e "missing" -e "fatal" -e "undefined" -e "runaway"
echo ""
echo "*** final pass ****"
echo ""
pdflatex -halt-on-error -output-directory aux "${fileName}.tex" | grep -i -e "warning" -e "error" -e "missing" -e "fatal" -e "undefined" -e "runaway"

if [ -e aux/proc.pdf ]
then
    mv -f aux/proc.pdf ./
else
    echo "did not compile to pdf"
fi
