
## This is our requirements.R script

project_packages <- c(
	"lubridate",
	"plyr",
	"dplyr",
	"tidyr"
	)

for (package in project_packages){
	if (require(package) == FALSE) {
		print("This package has already been installed xxxx")
		install.packages(package)	
	} else {
		print("This package has already been installed")
	} 
}