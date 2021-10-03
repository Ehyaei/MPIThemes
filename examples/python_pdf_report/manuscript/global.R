options(scipen = 999)
options(knggitr.kable.NA = '')

##%######################################################%##
#                                                          #
####                    load library                    ####
#                                                          #
##%######################################################%##

library(MPIThemes)
library(ggplot2)
library(knitr)

conditionalDefaut_dev <- function() {
  return(ifelse(opts_current$get("engine") == "python","png","cairo_pdf"))
}

opts_chunk$set(
  dev = quote(conditionalDefaut_dev())
  )



############################################################
#                                                          #
#                   Set Color and Theme                    #
#                                                          #
############################################################

set_color_theme()


