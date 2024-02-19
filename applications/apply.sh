#!/bin/bash

cvTex="wohlever_cv.tex"
coverTex="coverLetter.tex"
myDir="$(pwd)"

cd ../..

if [ -s "${cvTex}" ]
then
    pdflatex -interaction=nonstopmode "${cvTex}"
fi

cd "${myDir}"

if [ -s "${coverTex}" ]
then
    pdflatex -interaction=nonstopmode "${coverTex}"
    gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=Wohlever_Application.pdf coverLetter.pdf ../../wohlever_cv.pdf
else
    gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=Wohlever_Application.pdf ../../wohlever_cv.pdf
fi
