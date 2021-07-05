pdflatex -interaction=nonstopmode ../../wohlever_cv.tex
pdflatex -interaction=nonstopmode coverLetter.tex
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=Wohlever_Application.pdf coverLetter.pdf ../../wohlever_cv.pdf
