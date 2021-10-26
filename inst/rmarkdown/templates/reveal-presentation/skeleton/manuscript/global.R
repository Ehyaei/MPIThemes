############################################################
#                                                          #
#                       Set Options                        #
#                                                          #
############################################################

knitr::opts_chunk$set(
  collapse = TRUE,
  dev.args = list(bg = 'transparent'),
  warning = FALSE,
  message = FALSE,
  error = FALSE,
  echo = FALSE,
  dpi = 300,
  out.width = "100%",
  fig.align = "center",
  fig.pos ="H",
  comment = "",
  highlight = TRUE,
  screenshot.opts <- list(delay = 1),
  fig.path = "figures/"
)

options(scipen = 999)
options(knitr.kable.NA = '')

##%######################################################%##
#                                                          #
####                    load library                    ####
#                                                          #
##%######################################################%##

library(MPIThemes)
library(ggplot2)
library(dplyr)
library(grid)
library(gt)
library(kableExtra)

############################################################
#                                                          #
#                   Set Color and Theme                    #
#                                                          #
############################################################

set_color_theme(12)
