speed = data.frame(mph=rep(seq(10,75,by=5), 2), mpg=c(4.8,8.6,9.8,13.7,18.2,19.9,22.4,21.3,20.5,18.6,14.4,12.1,10.1,8.4,5.7,7.3,11.2,12.4,16.8,19,23.5,22,19.7,19.3,13.7,13,9.4,7.6))
plot(speed) # (a) yes. I suggest a quardic transformation.
fit = lm(mpg ~ mph, speed)
summary(fit)
# (b) mpg = 0.03908 * mph + 12.74637, 0.469 < .05, reject H0
plot(fit)

fit2 = lm(mpg ~ I(mph ^ 2) + mph, speed)
summary(fit2) # (c) mpg = -0.0145014 * mph ^ 2 + 1.2716937 * mph - 7.5555495
# 2.338e-14 < .05, reject H0
# the residual plot shows some pattern
plot(fit2)
predict(fit2, data.frame(mph=62)) # (d) 15.54618
# 1.2716937 / ((-2) * (-0.0145014)) = 43.84727
plot(speed)
fit3 = lm(mpg~as.factor(mph), speed)
abline(fit)
lines(10:75, predict(fit2, data.frame(mph=10:75)), col=2) 
lines(speed$mph[1:14], fit3$fit[1:14], type="b", col=4, pch=16)
