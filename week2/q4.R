auto = read.csv("data/Auto.csv", na.strings="?")
auto$origin = factor(auto$origin, 1:3, c("US", "Europe", "Japan"))
fit = lm(mpg ~ origin + weight + year, auto)
plot(fit)
# (b) residual plot shows OLS not BLUE. heteroscedasticity
fit2 = lm(log(mpg) ~ origin + log(weight) + year + I(year ^ 2), auto)
plot(fit2)
summary(fit2)
# (d) 0.2559684 / (0.0019051 * 2) 67.17978 -> 1967
# (e) -0.8750305 < 0
# (f) originEurope 0.0668291
# (h) 0.0668291 - 0.0319711
# (i) 0.075477 > 0.05, cannot reject H0.