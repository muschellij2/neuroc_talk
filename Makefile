LIST  = ICSA_2019
LIST += WCBR_2018
LIST += smi_2021

all:
	for fol in $(LIST) ; do \
		str="rmarkdown::render('"$$fol.Rmd"', output_format = 'all')" ; \
		echo $$str ; \
		Rscript -e "$$str" ; \
		str="pagedown::chrome_print('"$$fol.html"')"  ; \
		Rscript -e "$$str" ; \
	done

clean:
	for fol in $(LIST) ; do \
		rm -f ${fol}.html ${fol}.pdf 
	done	
