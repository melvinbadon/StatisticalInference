KnitToPdf <- function() {
# Set working directory
setwd(getwd())

# Load packages
require(knitr)
require(markdown)

sourcefile <- "ToothGrowth.Rmd"
#outputfile <-

# Create .md, .html, and .pdf files
knit(sourcefile)
markdownToHTML('ToothGrowth.md', 'ToothGrowth.html', options=c("use_xhml"))
system('pandoc -s ToothGrowth.html -o ToothGrowth.pdf')

}