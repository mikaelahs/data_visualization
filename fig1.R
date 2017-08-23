library(ggplot2)
library(gridExtra)
library(grid)

df1 <- read.csv("results-glmnet-cross-table.csv", header = T)
df2 <- read.csv("results-pgboost-cross-table.csv", header = T)
df1$alg <- rep('glmnet', nrow(df1))
df2$alg <- rep('boosting', nrow(df2))
df <- rbind(df1,df2)
df$title1 <- rep('MedErr', nrow(df1))
df$title2 <- rep('RMSE', nrow(df1))

plot1 <- ggplot(df) + 
  geom_boxplot(aes(factor(alg),mederr), lwd=.75, outlier.size=2.5) +
  facet_grid(. ~ title1) +
  theme(axis.title = element_blank(),
        axis.text = element_text(size=14),
        strip.text.x = element_text(size = 14),
        plot.margin = unit(c(.25, .25, 1, 4), "cm"),
        panel.grid.major = element_line(size=.75),
        panel.grid.minor = element_line(size=.5))

plot2 <- ggplot(df) +
  geom_boxplot(aes(factor(alg),rmse), lwd=.75, outlier.size=2.5) +
  facet_grid(. ~ title2) + 
  theme(axis.title = element_blank(),
        axis.text = element_text(size=14),
        strip.text.x = element_text(size = 14),
        plot.margin = unit(c(.25, 4, 1, 0), "cm"),
        panel.grid.major = element_line(size=.75),
        panel.grid.minor = element_line(size=.5))

grid.arrange(plot1, plot2, ncol=2, top=textGrob("Comparing glmnet and gradient boosting", gp=gpar(fontsize=20)))


