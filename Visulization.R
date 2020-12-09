pdf("visualization.pdf")
library(tidyverse)
data=read.csv("iris.csv")
ggplot(data = data) +
  geom_point(mapping = aes(x=SepalWidthCm, y=SepalLengthCm, color = Species))


ggplot(data = data) +
  geom_smooth(mapping = aes(x=SepalWidthCm, y=SepalLengthCm, color = Species))
ggplot(data = data, mapping = aes(x=SepalWidthCm, y=SepalLengthCm, color = Species)) +
  geom_point() +
  geom_smooth(se = FALSE)


ggplot(data = data, aes(Species, SepalLengthCm)) +
  geom_boxplot()


ggplot(data = data) +
  geom_point(mapping = aes(x=PetalWidthCm, y=PetalLengthCm, color = Species))

ggplot(data=data,aes(x=SepalLengthCm)) + geom_histogram() +theme_minimal()


ggplot(data=data,aes(x=SepalLengthCm)) + geom_histogram(binwidth=0.3) +theme_minimal()


ggplot(data=data,aes(x=SepalLengthCm,fill=Species)) + geom_histogram() +theme_minimal()

ggplot(data=data,aes(x=Species,y=PetalLengthCm,color=Species)) + geom_bar(stat = "summary", fun.y = "mean") +
  theme_minimal()
dev.off()
