dat = data.frame(x=c(0,0,0, 15,15,15, 30,30,30, 45,45,45, 60,60,60, 75,75,75), y=c(8,6,8, 12,10,14, 25,21,24, 31,33,28, 44,39,42, 48,51,44))
fit = lm(y ~ x, dat)
plot(fit)
# good
dat2=data.frame(
  circ = c(2081995,1374858,1284613,1057536,970051,963069,828236,779259,768288,
           691771,663693,657015,645623,533384,528777,514702,492002,486426,
           443592,349182), linerate=c(37.65,18.48,14.50,14.61,16.47,16.07,13.82,13.05,13.78,12.25,10.53,
                                      14.18,12.83,7.81,5.17,11.08,6.58,8.77,6.03,6.77),
  row.names=c("WSJ","NY Daily News","USA Today","LA Times","NYT", "NY Post",
              "Philadelphia","Chi Tribune","Wash Post","SF Chronicle","Chi Sun Times", "Detroit News","Detroit Free Press","Long Island Newsday","KC Times", "Miami Herald","Cleveland","Milwaukee","Houston","Baltimore"))
fit2 = lm(linerate ~ circ, dat2)
plot(fit2)
fit2 = lm(linerate ~ circ, dat2[-1,])
plot(fit2)
# WSJ, USA is outlier

dat3 = data.frame(
  size=c(168, 21, 94, 39, 249, 43, 589, 41),
  sales=c(5178, 2370,3591, 2056, 7325, 2449, 15708, 2469))
fit3 = lm(sales ~ size, dat3)
plot(fit3)
# don't have many cases, and cases1 is outlier

comm = read.table("data/commercial.txt", header=T)
fit4 = lm(y ~ x1 + x2 + x3 + x4, comm)
plot(fit4)
# good

brand = data.frame( liking=c(64,73,61,76,72,80,71,83,83,89,86,93,88,95,94,100), moisture=c(4,4,4,4,6,6,6,6,8,8,8,8,10,10,10,10), sweetness=c(2,4,2,4,2,4,2,4,2,4,2,4,2,4,2,4) )
fit5 = lm(liking ~ sweetness + moisture, brand)
plot(fit5)

