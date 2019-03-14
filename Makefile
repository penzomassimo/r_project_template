
install_packages:
	@echo --- Installing project packages ---
	Rscript -e 'install.packages(c("ggplot2", "logging", "agricolae", "devtools"), repos="http://cran.rstudio.com/")'

init:
	@echo --- Simulating data ---
	# Rscript --version
	Rscript --verbose './scripts/main.R'
	
knit_all:
	@echo --- Generating documents ---
	Rscript -e "library(knitr); knit('./markdown/myfile.Rmd')"
	
clean:
	rm -rf ./plots/*

foo.html: 
	Rscript -e 'rmarkdown::render("foo.Rmd")'

run_tests:
	@echo --- Running tests ---
	Rscript --verbose './tests/run_tests.R'

