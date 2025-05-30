% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{ridge_regression}
\alias{ridge_regression}
\title{Ridge Regression}
\usage{
ridge_regression(X, y, bagging = FALSE, prescreen = FALSE, lambda = 0.1)
}
\arguments{
\item{X}{Predictor matrix.}

\item{y}{Response variable.}

\item{bagging}{Logical indicating whether to perform bagging.}

\item{prescreen}{Logical indicating whether to pre-screen predictors.}

\item{lambda}{Regularization parameter.}
}
\value{
The fitted ridge regression model.
}
\description{
The ridge_regression function implements ridge regression using the glmnet package. Ridge regression is a type of regularized linear regression that adds a penalty term to the least squares objective function, which helps to reduce the variance of the model and prevent overfitting.
}
\examples{

#' # Generate sample data for a Ridge regression problem
n <- 100 # Number of observations
p <- 10 # Number of predictors
X <- as.matrix(matrix(rnorm(n * p), nrow = n)) # Generate predictor matrix
beta <- c(1, rep(0, p - 1)) # True coefficients (first one is 1, others are 0)
y <- X \%*\% beta + rnorm(n) # Generate the response variable
## Linear regression without bagging or prescreening
# Fit the Linear regression model without bagging or prescreening
model1 <- ridge_regression(X, y, bagging = FALSE, prescreen = FALSE, lambda = 0.1)
# Make predictions on the original data
predictions1 <- predict(model1, newx = X)
print(head(predictions1))

}
