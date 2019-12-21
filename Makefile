LIST  = ICSA_2019
LIST += WCBR_2018

all:
	for fol in $(LIST) ; do \
		str="rmarkdown::render('"$$fol.Rmd"', output_format = 'all')" ; \
		echo $$str ; \
		Rscript -e "$$str" ; \
		electron-pdf $$fol.html $$fol.pdf --landscape ; \
	done

clean:
	for fol in $(LIST) ; do \
		rm -f ${fol}.html ${fol}.pdf 
	done	
