TARGET := ieice_journal_2022_01_mpk_for_kernel.pdf

.PHONY: all clean distclean

all: $(TARGET)

clean:
	$(RM) *.aux *.log *.dvi *.gz *.fls *.fdb_latexmk
	latexmk -c

distclean: clean
	$(RM) $(TARGET)
	latexmk -C

%.pdf: %.tex
#	latexmk -f $< -latex=pdflatex -synctex=1
	latexmk -f $< -pdfdvi -latex=platex -synctex=1
#	latexmk -f $< -pdfdvi -latex=lualatex -synctex=1
#	latexmk $< -pdfdvi -latex=platex -synctex=1
#	dvipdfmx $<

#%.dvi: %.tex
#	platex $< -halt-on-error
#	platex $< -halt-on-error
