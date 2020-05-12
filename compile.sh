cd Lecture_notes/
for f in *.tex ; do
  pdflatex $f 
done
rm *.aux *.out *.log *.nav *.snm *.toc
