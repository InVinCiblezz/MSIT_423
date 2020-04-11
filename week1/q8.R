auto = read.csv("data/Auto.csv", na.strings="?")
auto$origin = factor(auto$origin, 1:3, c("US", "Europe", "Japan"))
plot(auto)
cor(auto$mpg, auto$displacement, use = "pair") # complete (b) -0.804443
fit = lm(mpg ~ cylinders + displacement + horsepower + weight + acceleration + year, auto)
summary(fit)
# (c) p-value: < 2.2e-16, significant
# (d) weight & year
# (e) slope = 7.534e-01
# (f) slope = 7.678e-03