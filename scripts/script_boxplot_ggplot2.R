### scripts ggplot2 ###

# Maurício Humberto Vancine - mauricio.vancine@gmail.com


###-------------------------------------------------------------------------------------------###
						### boxplot ####
###-------------------------------------------------------------------------------------------###

# packages
install.packages("ggplot2", dep = T)
library(ggplot2)


# data
da <- data.frame(sui = runif(100, 0, 1), lan = c(sample(1:5, 100, rep = T)))
da


# plot
ggplot(data = da, aes(x = as.factor(lan), y = sui)) + 
	 geom_boxplot(fill = "white", colour = c("red", "forestgreen", "blue", "orange", "gray")) + 
	 theme(legend.position = "none") +
	 xlab("Classes") +
	 ylab("Variable")


# save
ggsave("boxplot.tiff", he = 18, wi = 18, un = "cm", dpi = 300)

###-------------------------------------------------------------------------------------------###