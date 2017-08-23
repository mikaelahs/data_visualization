library(ggplot2)

df <- read.csv("cancer_survival_rate.csv", header = T)

plot <- ggplot(df) + 
  geom_segment(aes(x=0+1.5,xend=34-1.5,y=c(99+1,96+1,95-1,89+1,86+1,85,84-1,82-1,71,69,63+1,62,62-2,58,57-1,55-1,43,32,30,24,15+.5,14-1,8,4),yend=c(95+1,96+2,94,87,78,80,83,76,64,57+1,55+1,54-2,55-1,46,46-2,49,32,29,13+2,19,11+2,8+2,6+2,3-1)),size=.75,colour='gray') +
  geom_segment(aes(x=34+1.5,xend=68-1.5,y=c(95+1,96+2,94,87,78,80,83,76,64,57+1,55+1,54-2,55-1,46,46-2,49,32,29,13+2,19,11+2,8+2,6+2,3-1),yend=c(81,95,88,83,65,67,79,68+1,60,38,49-1,47-1,52,34,33-1,50,26,26-2,5+1,15,6+2,5-1,8+2,3-1)),size=.75,colour='gray') +
  geom_text(label="5 years",x=0,y=(max(df$X5.year,df$X10.year,df$X20.year)+4),size=5) +
  geom_text(label="10 years",x=34,y=(max(df$X5.year,df$X10.year,df$X20.year)+4),size=5) +
  geom_text(label="20 years",x=68,y=(max(df$X5.year,df$X10.year,df$X20.year)+4),size=5) +
  geom_text(label=df$X5.year, y=c(99+1,96+1,95-1,89+1,86+1,85,84-1,82-1,71,69,63+1,62,62-2,58,57-1,55-1,43,32,30,24,15+.5,14-1,8,4), x=rep.int(0,24),size=3.5) +
  geom_text(label=df$X10.year, y=c(95+1,96+2,94,87,78,80,83,76,64,57+1,55+1,54-2,55-1,46,46-2,49,32,29,13+2,19,11+2,8+2,6+2,3-1), x=rep.int(34,24),size=3.5) +
  geom_text(label=df$X20.year, y=c(81,95,88,83,65,67,79,68+1,60,38,49-1,47-1,52,34,33-1,50,26,26-2,5+1,15,6+2,5-1,8+2,3-1), x=rep.int(68,24),size=3.5) +
  geom_text(label=df$Cancer.type, y=c(99+1,96+1,95-1,89+1,86+1,85,84-1,82-1,71,69,63+1,62,62-2,58,57-1,55-1,43,32,30,24,15+.5,14-1,8,4), x=rep.int(0-12,24),size=3.5) +
  theme(legend.position = "none", 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        panel.border = element_rect(colour="gray50",fill=NA,size=1),
        axis.ticks = element_blank(),
        axis.text = element_blank(),
        axis.title = element_blank(), 
        plot.title = element_text(size = 22,hjust = .5)) + 
  ggtitle("Cancer Survival Rates") +
  xlim((0-34),(68+34)) +
  ylim((0),max(df$X5.year,df$X10.year,df$X20.year)+6) 

plot

