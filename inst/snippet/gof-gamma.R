oldopt <- options(warn = -1)
data <- c(18.0, 6.3, 7.5, 8.1, 3.1, 0.8, 2.4, 3.5, 9.5, 39.7,
          3.4, 14.6, 5.1, 6.8, 2.6, 8.0, 8.5, 3.7, 21.2, 3.1,
          10.2, 8.3, 6.4, 3.0, 5.7, 5.6, 7.4, 3.9, 9.1, 4.0)
gamlik <- 
  function(theta, x) { sum(dgamma(x, theta[1], theta[2], log = TRUE)) }
pgamm <- 
  function(x, theta){ pgamma(x, theta[1], theta[2]) }
GOF(data, gamlik, pgamm, start = c(1, 1), cutpts = c(0, 3, 6, 12, Inf))$table
GOF(data, gamlik, pgamm, start = c(1, 1), cutpts = c(0, 3, 6, 12, Inf))
GOF(data, gamlik, pgamm, start = c(1, 1), cutpts = c(0, 3, 6, 12, Inf), 
    pearson = TRUE)
options(oldopt)

