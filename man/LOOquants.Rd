% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LOOquants.R
\name{LOOquants}
\alias{LOOquants}
\title{Revaluate Quantiles}
\usage{
LOOquants(QKResults)
}
\arguments{
\item{QKResults}{Output from the quantKrig function.}
}
\value{
Leave-one-out predictions at the input locations
}
\description{
Generates Leave-One-Out predictions for each location and quantile.
}
\details{
Returns the estimated quantiles and a plot of the leave-one-out predictions against the observed values.
}
\examples{

X <- seq(0,1,length.out = 20)
Y <- cos(5*X) + cos(X)
Xstar <- rep(X,each = 100)
Ystar <- rep(Y,each = 100)
e <- rchisq(length(Ystar),5)/5 - 1
Ystar <- Ystar + e
lb <- c(0.0001,0.0001)
ub <- c(10,10)
Qout <- quantKrig(Xstar,Ystar, seq(0.05,0.95, length.out = 7), lower = lb, upper = ub)

LOOquants(Qout)

}
