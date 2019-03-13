
install_packages:
	@echo --- Installing project packages ---
	Rscript -e 'install.packages(c("ggplot2", "reshape", "vegan"))'

init:
	@echo --- Simulating data ---
	# Rscript --version
	Rscript --verbose './r_scripts/main.R'
	
knit_all:
	@echo --- Generating documents ---
	Rscript -e "library(knitr); knit('./r_markdown/myfile.Rmd')"
	
clean:
	rm -rf ./plots/*

foo.html: 
	Rscript -e 'rmarkdown::render("foo.Rmd")'

