brand = data.frame(liking=c(64,73,61,76,72,80,71,83,83,89,86,93,88,95,94,100), 
                   moisture=c(4,4,4,4,6,6,6,6,8,8,8,8,10,10,10,10), 
                   sweetness=c(2,4,2,4,2,4,2,4,2,4,2,4,2,4,2,4))
summary(brand)
nrow(brand)
plot(brand)
cor(brand)
# (b) Moisture has a stronger positive correlation with liking than sweetness. 
# There is no correlation between sweetness and moisture because the data are from an experiment with an orthogonal design.
fit = lm(liking ~ moisture + sweetness, brand)
fit # (c) liking = 37.650 + 4.425 * moisture + 4.375 * sweetness  
summary(fit)
# (e) Multiple R-squared:  0.9521
# (d) p-value: 2.658e-09 < .01, significant
# (e) 1.78e-09 < .05, 2.01e-05 < .05, both significant
predict(fit, data.frame(moisture=5, sweetness=4), level = .99, interval = "pred")
# [68.48077, 86.06923]
