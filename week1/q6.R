comm = read.table("data/commercial.txt", header=T)
summary(comm)
plot(comm) 
cor(comm)
fit = lm(y ~ x1 + x2 + x3 + x4, comm)
summary(fit) # (c) y = 1.220e+01 + x1 * -1.420e-01 + 2.820e-01 * x2  + 6.193e-01 * x3 + 7.924e-06 * x4
# (d) H0: B0 = B1 = B2 = B3 = B4 = 0 
# H1: B0 != 0 || B1 != 0 || B2 != 0 || B3 != 0 || B4 != 0
# P-value = 7.272e-14 < .01, significant, reject H0
# (e) Multiple R-squared:  0.5847
# (f) 3.89e-09 < .05 2.75e-05 < .05 1.98e-07 < .05, 0.57 > .05, 
# so x1, x2 and x4 are significant while x3 is not
newx = data.frame(x1=c(4,6,12), x2=c(10,11.5,12.5), x3=c(.1,0,.32), x4=10000*c(8,12,34))
predict(fit, newx, interval="pred")
