set.seed(32) # Initializes the random number generator so we can replicate these results. 
#To get different random numbers, change the seed.
m = 100
a = 2.0
b = 1.0 / 3.0
theta = rgamma(n=m, shape=a, rate=b)
hist(theta, freq=FALSE)
curve(dgamma(x=x, shape=a, rate=b), col="red", add=TRUE)
sum(theta) / m # sample mean
mean(theta) # sample mean
a / b # true expected value
m = 1e4
theta = rgamma(n=m, shape=a, rate=b)
mean(theta)
var(theta) # sample variance
a / b^2 # true variance of Gamma(a,b)
ind = theta < 5.0 # set of indicators, TRUE if theta_i < 5
mean(ind) # automatically converts FALSE/TRUE to 0/1
pgamma(q=5.0, shape=a, rate=b) # true value of Pr( theta < 5 )
quantile(x=theta, probs=0.9)
qgamma(p=0.9, shape=a, rate=b) # true value of 0.9 quantile
