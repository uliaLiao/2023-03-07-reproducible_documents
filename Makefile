.PHONY: report
report:
	make clean
	Rscript -e "rmarkdown::render(here::here('analysis/penguins.Rmd'), output_dir = here::here('output'))"

.PHONY: clean
clean:
	rm -f analysis/penguins.html 
	rm -f output/penguins.html