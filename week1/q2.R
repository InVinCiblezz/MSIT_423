dat = data.frame(x=c(0,0,0, 15,15,15, 30,30,30, 45,45,45, 60,60,60, 75,75,75), 
                 y=c(8,6,8, 12,10,14, 25,21,24, 31,33,28, 44,39,42, 48,51,44))
plot(y ~ x, dat)
fit = lm(y ~ x, dat)
fit # (a)
abline(fit) # (b)
summary(fit)
# (c) Residual standard error: 2.573
# (d) Multiple R-squared:  0.9729
confint(fit, level = .99)
# (e) 2.6856338 8.9651598
# (f) 0.4984837 0.6367544
# (g) H0: B1 = 0, H1: B1 != 0, p-value = 5.73e-14 < .01, reject H0
predict(fit, data.frame(x=50), interval = "conf")
# (h) 32.77604 35.63666
predict(fit, data.frame(x=50), interval = "pred")
# (i) 28.56825 39.84445
