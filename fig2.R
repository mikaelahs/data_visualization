library(ggplot2)

df <- read.csv("results-gradient-boosting.csv", header = T)
extra <- data.frame(color=c('Measured = Predicted','Measured = Predicted - 3%','Measured = Predicted + 3%'))

plot <- ggplot(df, aes(x=pred, y=y)) +
  geom_segment(data=extra, aes(x=0, xend=20.5, y=0, yend=20.5, colour=color),size=.75) +
  geom_segment(data=extra, aes(x=0, xend=17.5, y=0+3, yend=17.5+3, colour=color),linetype="dashed",size=.75) +
  geom_segment(data=extra, aes(x=2.5, xend=21, y=2.5-3, yend=21-3, colour=color),linetype="dashed",size=.75) +
  geom_point(colour='black', alpha = 0.5, size=2.5) +
  ggtitle('Measured vs Predicted Passing Rate') +
  ylab('Measured') +
  xlab('Predicted') +
  theme(plot.title = element_text(size = 20,hjust = .5),
        axis.title = element_text(size=15),
        axis.text = element_text(size=15),
        legend.position = c(.78, .19),
        legend.title = element_blank(),
        legend.text = element_text(size=12),
        legend.key.size = unit(1, "cm"),
        plot.margin = unit(c(1, 3, 1, 3), "cm"),
        panel.grid.major = element_line(size=.75),
        panel.grid.minor = element_line(size=.5)) +
  scale_color_manual(guide = guide_legend(override.aes = list(linetype = c("solid", "dashed", "dashed"))), values=c("gray70","gray70","gray70"))
  
plot
  