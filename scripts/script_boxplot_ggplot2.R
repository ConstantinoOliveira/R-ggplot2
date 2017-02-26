### scripts ggplot2 ###

# Maurício Humberto Vancine - mauricio.vancine@gmail.com

# packages
# install.packages("ggplot2", dep = T)
library(ggplot2)


# data
da <- data.frame(sui = runif(100, 0, 1), lan = factor(sample(letters[1:5], 100, rep = T)), 
		     col = NA)
str(da)
da

color <- c("red", "forestgreen", "blue", "orange", "gray")

for(i in 1:length(levels(da$lan))){
  da$col[da$lan == levels(da$lan)[i]] <- color[i]}

da


###-----------------------------------------------------------------------------------------###
						### boxplot ####
###-----------------------------------------------------------------------------------------###

# plot
ggplot(data = da, aes(x = lan, y = sui)) + 
	 geom_boxplot(fill = "white", colour = c("red", "forestgreen", "blue", "orange", "gray")) + 
	 theme(legend.position = "none") +
	 xlab("Classes") +
	 ylab("Variable")


# save
ggsave("boxplot.tiff", he = 18, wi = 18, un = "cm", dpi = 300)



###-----------------------------------------------------------------------------------------###
						### boxplot jitter ####
###-----------------------------------------------------------------------------------------###

# plot
ggplot(data = da, aes(x = lan, y = sui)) + 
	 geom_boxplot() + 
	 geom_jitter(colour = da$col, width = 0.2) +
	 theme(legend.position = "none") +
	 xlab("Classes") +
	 ylab("Variable")


# save
ggsave("boxplot_ jitter.tiff", he = 18, wi = 18, un = "cm", dpi = 300)


ggplot(data = da, aes(x = lan, y = sui))


###-----------------------------------------------------------------------------------------###















