######################
##   Exercise 7.2   ##
##  The Book of R   ##
## Theo Bruckbauer  ##
######################

library(ggplot2)

qplot(geom = "blank") +
  geom_hline(yintercept = 13, linetype = "dashed") +
  geom_hline(yintercept = 7, linetype = "dashed") +
  geom_vline(xintercept = -3, linetype = "dashed") +
  geom_vline(xintercept = 3, linetype = "dashed") +
  geom_segment(aes(
    x = -2.5,
    xend = -1,
    y = 12.5,
    yend = 10.5
  ), arrow = arrow(ends = "last")) +
  geom_segment(aes(
    x = -2.5,
    xend = -1,
    y = 7.5,
    yend = 9.5
  ), arrow = arrow(ends = "last")) +
  geom_segment(aes(
    x = -2.5,
    xend = -1,
    y = 10,
    yend = 10
  ), arrow = arrow(ends = "last")) +
  geom_segment(aes(
    x = 1,
    xend = 2.5,
    yend = 12.5,
    y = 10.5
  ), arrow = arrow(ends = "first")) +
  geom_segment(aes(
    x = 1,
    xend = 2.5,
    yend = 7.5,
    y = 9.5
  ), arrow = arrow(ends = "first")) +
  geom_segment(aes(
    x = 1,
    xend = 2.5,
    yend = 10,
    y = 10
  ), arrow = arrow(ends = "first")) +
  annotate("text",
           label = "SOMETHING\nPROFOUND",
           x = 0,
           y = 10) +
  scale_x_continuous(limits = c(-3, 3), breaks = seq(-3, 3, 1)) +
  scale_y_continuous(limits = c(7, 13), breaks = seq(7, 13, 1)) +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_blank(),
    axis.line = element_line(colour = "black")
  )
