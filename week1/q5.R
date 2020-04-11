auto = read.csv("data/Auto.csv", na.strings="?")
auto$origin = factor(auto$origin, 1:3, c("US", "Europe", "Japan"))
fit = lm(mpg ~ horsepower, auto)
fit # (a) mpg = -0.1578 * horsepower + 39.9359
# (b) slope tells that the change in every unit of horsepower will reduce mpg by 0.1578
summary(fit) # (c) standard error = 0.006446
# (d) Residual standard error: 4.906
# (e) p-value = <2e-16 < .01, significant
# (f) Multiple R-squared:  0.6059
predict(fit, data.frame(horsepower=98), interval = "pred")
# (h) [14.8094, 34.12476]
predict(fit, data.frame(horsepower=98), level = .99, interval = "conf")
# (i) [23.81669, 25.11747]
confint(fit, level = .9) # (j) [-0.1684719, -0.1472176]
plot(mpg ~ horsepower, auto)
abline(fit)
