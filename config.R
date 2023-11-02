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
url <- "https://www.mukherjeelab.org/"
giturl <- "https://github.com/raysinensis/spatialshiny_adr/"
versionN <- "1.0.1"
geoN <- "GSE244084"
manuscriptL <- "https://www.biorxiv.org/content/10.1101/2023.06.12.544676v1"
manuscriptD <- "In situ spatial reconstruction of distinct normal and pathological cell populations within the human adrenal gland. Journal of the Endocrine Society 2023"
manuscriptT <- "The human adrenal gland consists of concentrically organized functionally distinct regions responsible for hormone production. Dysregulation of adrenocortical cell differentiation alters the proportion and organization of the functional zones of the adrenal cortex leading to disease. Current models of adrenocortical cell differentiation are based on mouse studies, but there are known organizational and functional differences between human and mouse adrenal glands. This study aimed to investigate the centripetal differentiation model in the human adrenal cortex and characterize aldosterone-producing micronodules (APMs) to better understand adrenal diseases such as primary aldosteronism. We applied spatially resolved in situ transcriptomics to human adrenal tissue sections from two individuals and identified distinct cell populations and their positional relationships. The results supported the centripetal differentiation model in humans, with cells progressing from the outer capsule to the zona glomerulosa, zona fasciculata, and zona reticularis. Additionally, we characterized two APMs in a 72-year-old female. Comparison with earlier APM transcriptomes indicated a subset of core genes, but also heterogeneity between APMs. The findings contribute to our understanding of normal and pathological cellular differentiation in the human adrenal cortex."
pageN <- 10 # number of lines, for tables
warningN <- 100 # number of genes, for throwing warnings in line and heat plots
plot_width <- 5.5
plot_height <- 4.5
proxy_height <- paste0(plot_height * 100, "px")
proxy_width <- paste0(plot_width * 100, "px")

set_shinytheme <- "paper"
ncore <- parallel::detectCores() - 1
start_tutorial <- TRUE # whether to start loaded app with tutorial