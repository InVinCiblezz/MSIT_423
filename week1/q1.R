machine = data.frame(age=c(2,5,9,3,8), cost=c(6,13,23,5,22))
plot(machine$age, machine$cost, xlab="# Age", ylab="# Cost") # (a)linear postive
fit = lm(cost ~ age, machine)
# (b)
cor(machine$age, machine$cost)
summary(fit)
# (c)cost = -1.0645 + 2.7527age
fit = lm(cost ~ age, machine)
abline(fit) # (d)
# (e) 7years cost = -1.0645 + 2.7527 * 7 = 18.2044
# (f) typical error: Residual standard error: 1.725
# (g) fraction of cost explained by age: Multiple R-squared:  0.9693
# (h) statistically significant?: p-value: 0.002303 <= 0.05, yes
# (i) 2.7527 +- 2 * 0.2828 (2.1871, 3.3183)
confint(fit) # 1.852721 3.652655
