library(ggplot2)
library(tidyverse)
library(dplyr)

msds_data <- read.csv("/Users/alandaguan/Downloads/MSDS-Orientation-Computer-Survey.csv")

msds_data <- msds_data%>%
  count(Operating.System)


plot <- ggplot(data = msds_data, aes(x = CPU.Number.of.Cores..int.)) +
  geom_histogram(fill = "blue", bins = 15) + labs(title = "MSDS Students' CPU Cores Average 5.90", 
                                       x = "Number of Cores (CPU)", y="Frequency")