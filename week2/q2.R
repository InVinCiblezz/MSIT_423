fiber = data.frame(invest=c(1300,500,130,2000,1200,110,40,60,57,500,90,90), miles=c(1700,650,110,1200,2400,165,72,45,85,650,50,87))
plot(fiber)
fit = lm(miles ~ invest, fiber)
coef(fit) # (a)
summary(fit)
abline(fit)
plot(fit)
# (b) the linear model is not be holded.
# (c) the Cook's distance of point four > 1
fit2 = lm(log(miles) ~ log(invest), fiber)
plot(log(fiber))
abline(fit2)
coef(fit2) # (d) log(miles) = 0.06803238 + 1.00734882 * log(invest)
plot(fit2) # (e) the linear model holds because the residual plot has no pattern.
summary(fit2)
# (f) 1.02e-06 < .05, reject H0.
confint(fit2) # (g) log(invest)  [0.793455, 1.221243] cannot reject
predict(fit2, data.frame(invest=1000)) # (h) 7.026552
# (j) Residual standard error: 0.4402, exp(7.026552 + (0.4402 ^ 2) / 2) = 1240.711 
