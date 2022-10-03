library(shiny)
library(dplyr)
library(tibble)
library(purrr)
library(readr)
library(stringr)
library(tidyr)
library(gtools)
library(ggplot2)
library(ggrepel)
library(viridis)
library(cowplot)
library(ComplexHeatmap) # bioconductor
library(DT)
library(plotly)
library(crosstalk)
library(shinyjs)
library(shinythemes)
library(shinycustomloader)
library(shinyjqui)
library(shinyWidgets)
library(rintrojs)
library(shinyBS)
library(bsplus)
library(Seurat)

### source R
source("config.R")
s <- readRDS("spatial_all4_reduc.rds")
# saveRDS(s2, "spatial_all4_reduc.rds")
s$name <- s$type_incl_apcc
autocomplete_list <- c("type", "type_incl_apcc", "sample",
                       "nCount_Spatial", "nFeature_Spatial", "percent_mito", "percent_ribo", "Phase",
                       rownames(s@assays$SCT@data) %>% sort())
cats <- c("sample", "type", "type_incl_apcc", "Phase")

slides <- c("umap", 
            s@images %>% names() %>% str_remove("^[A-D]1_") %>% mixedsort(), 
            s@images %>% names() %>% str_remove("^[A-D]1_") %>% mixedsort() %>% str_c("_H&E"))