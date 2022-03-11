#Class 5 Data Visualization

plot(1:5)


#ggplot installed to make plot look nicer. ggplot is loaded below

library(ggplot2)


plot(cars)

#ggplots have multiple layers: data + aesthetics + geometry
# command is: ggplot(data = ___) + aes(x = , y = ,) + geom_"type"()

p <- ggplot(data= cars) + aes(x= speed, y = dist) + geom_point() + geom_line()

p + geom_line()

p + geom_smooth(method = "lm")

#add custom axis labels

p + labs(title = "Speed and Stopping Distances of Cars", subtitle = "Data Gathered from 1930s", caption = "From R Dataset Cars", x = "Speed (MPH)", y = "Stopping Distance (ft)")

#RNA-Seq Plot

url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)


p <- ggplot(genes) + 
  aes(x=Condition1, y=Condition2, col=State) +
  geom_point()
p

p + scale_colour_manual( values=c("blue","gray","red") ) + labs(title = "Gene Expression Changes Upon Drug Treatment", x = "Control (no drug)", y = "Drug Treatment")
