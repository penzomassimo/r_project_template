
install_packages:
	@echo --- Installing project packages ---
	Rscript -e 'install.packages(c("ggplot2", "logging", "testthat", "devtools"), repos="http://cran.rstudio.com/")'

init:
	@echo --- Simulating data ---
	# Rscript --version
	Rscript --verbose './scripts/main.R'
	
knit_all:
	@echo --- Generating documents ---
	Rscript -e "library(knitr); knit('./markdown/anova.Rmd', './docs/test.html')"
	
clean:
	rm -rf ./plots/*

foo.html: 
	Rscript -e 'rmarkdown::render("./docs/test.html")'

run_tests:
	@echo --- Running tests ---
	Rscript --verbose './tests/run_tests.R'

