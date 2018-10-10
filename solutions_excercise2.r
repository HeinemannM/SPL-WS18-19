###############################################
excercise#2

###############################################

#1

a = c("Belgium", "Denmark", "France", "GB", "Ireland", "Italy", "Luxembourg", "Holland", "Portugal", "Spain", "USA", "Japan", "Deutschland")
x = c(2.8, 1.2, 2.1, 1.6, 1.5, 4.6, 3.6, 2.1, 6.5, 4.6, 3.0, 1.3, 4.2)
y = c(9.4, 10.4, 10.8, 10.5, 18.4, 11.1, 2.6, 8.8, 5.0, 21.5, 6.7, 2.5, 5.6)
df = data.frame(a,x,y)
as.character(a)
colnames(df) = c("country", "Increase of the index", "unemployment")
max(df$Increase of the index)
max(df$unemployment)
subset(df, df$Increase of the index == max(df$Increase of the index))
subset(df, df$unemployment == max(df$unemployment))
range_index = range(max(df$Increase of the index)-min(df$Increase of the index))
range_unemployment = range(max(df$unemployment)-min(df$unemployment))

#2
data("mtcars")
help("mtcars")

#3
mtcars[order(mtcars$mpg, mtcars$cyl, decreasing = TRUE),]

#4
mtcars$carb = NULL

#5
iPosVar_mpg = names(mtcars) == "mpg"
iPosVar_mpg
iPosVar_hp = names(mtcars) == "hp"
iPosVar_hp
r.cars = mtcars[,c("hp","cyl","disp","mpg","drat","wt","qsec","vs","am","gear")]

#6
help("grep")
grep("Merc", rownames(r.cars))

#7
dax_prices = data.frame(read.csv("dax_prices.csv"))

#8
sapply(dax_prices, class)
class(dax_prices$DAX)

#9
names(dax_prices) = gsub("DAX", "DAX Prices", names(dax_prices))
dax_prices

#10
write.table(dax_prices, file = "dax_prices.txt", sep = ",", dec = ",")

#11
dax.prices.txt = data.frame(read.table(file = "dax_prices.txt", sep = ",", dec = ","))
help("read.table")