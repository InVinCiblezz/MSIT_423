dat=data.frame(circ = c(2081995,1374858,1284613,1057536,970051,963069,828236,779259,768288, 691771,663693,657015,645623,533384,528777,514702,492002,486426, 443592,349182), 
               linerate=c(37.65,18.48,14.50,14.61,16.47,16.07,13.82,13.05,13.78,12.25,10.53,14.18,12.83,7.81,5.17,11.08,6.58,8.77,6.03,6.77), 
               row.names=c("WSJ","NY Daily News","USA Today","LA Times","NYT", "NY Post", "Philadelphia","Chi Tribune","Wash Post","SF Chronicle","Chi Sun Times", "Detroit News","Detroit Free Press","Long Island Newsday","KC Times", "Miami Herald","Cleveland","Milwaukee","Houston","Baltimore"))
plot(linerate ~ circ, dat) # (a)
fit = lm(linerate ~ circ, dat)
cor(dat) # (b) 0.9302967, make sense.
summary(fit)
fit # (c) linerate = 1.581e-05 * cric + 2.822e-01
abline(fit)
# (d) p-value = 2.86e-09 < .05, sigificant.
confint(fit, level = .95)
