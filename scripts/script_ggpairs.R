### script ggpairs ###

# Mauricio Humberto Vancine - mauricio.vancine@gmail.com
# 15/09/2017

###---------------------------------------------------------------------------###

## memory
rm(list = ls())
gc()
memory.limit(size = 1.75e13) 

## packages
pacman::p_load(ggplot2, GGally)

###---------------------------------------------------------------------------###

# data
data(iris)

# plot
ggpairs(iris[, 1:4], 
        lower = list(continuous = wrap(ggally_smooth, size = 1, color = "black")),
        diag = list(continuous = wrap(ggally_barDiag, color = "black")),
        upper = list(continuous = wrap(ggally_cor, color = "black"))) + 
  theme_light()

###---------------------------------------------------------------------------###
