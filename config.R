### options
options(readr.num_columns = 0)
options(stringsAsFactors = FALSE)
options(spinner.type = 6)
theme_set(theme_cowplot())
stack_size <- getOption("pandoc.stack.size", default = "1000m")
options(repos = BiocManager::repositories()) # for pushing to shinyapps.io
# options(shiny.reactlog = TRUE) # for checking shiny logic

### folders
rpath <- "R" # additional R code

### general data settings
apptitle_short <- "Adr"
apptitle <- "Adrenal Gland Spatial Transcriptomic Atlas"
url <- ""
giturl <- "https://github.com/raysinensis/spatialshiny_adr/"
versionN <- "1.0.1"
geoN <- ""
manuscriptL <- "https://github.com/raysinensis/spatialshiny_adr"
manuscriptD <- ""
manuscriptT <- ""
pageN <- 10 # number of lines, for tables
warningN <- 100 # number of genes, for throwing warnings in line and heat plots
plot_width <- 4.5
plot_height <- 4
proxy_height <- paste0(plot_height * 100, "px")
proxy_width <- paste0(plot_width * 100, "px")

set_shinytheme <- "paper"
ncore <- parallel::detectCores() - 1
start_tutorial <- TRUE # whether to start loaded app with tutorial