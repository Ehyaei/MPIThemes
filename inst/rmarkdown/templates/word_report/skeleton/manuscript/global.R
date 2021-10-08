############################################################
#                                                          #
#                       Set Options                        #
#                                                          #
############################################################

knitr::opts_chunk$set(
  collapse = TRUE,
  dev.args = list(bg = 'transparent'),
  warning = F,
  message = F,
  error = F,
  dpi = 300,
  fig.width = 7,
  fig.height = 5,
  fig.align = "center",
  fig.pos ="H",
  comment = "",
  highlight = TRUE,
  screenshot.opts <- list(delay = 1),
  fig.path = "figures/"
)

options(scipen = 999)
options(knggitr.kable.NA = '')

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
library(officedown)
library(officer)

############################################################
#                                                          #
#                   Set Color and Theme                    #
#                                                          #
############################################################

set_color_theme(10)
