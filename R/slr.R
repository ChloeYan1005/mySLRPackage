#' Simple Linear Regression
#'
#' This function calculates the simple linear regression coefficients for a predictor (x) and a response variable (y).
#' It computes the slope and intercept for the best fit line using the least squares method.
#'
#' @param x A numeric vector representing the predictor variable.
#' @param y A numeric vector representing the response variable.
#'
#' @return A list containing the regression coefficients 'intercept' and 'slope', along with the residuals, the residual sum of squares (RSS), the standard error of the estimate, the t-statistic, and the p-value for the slope and intercept.
#'
#' @examples
#' x <- 1:10
#' y <- 2 + 3 * x + rnorm(10)
#' results <- slr(x, y)
#' print(results)
#'
#' @export
slr <- function(x, y) {
  n <- length(y)
  x_bar <- mean(x)
  y_bar <- mean(y)

  SSxy <- sum((x - x_bar) * (y - y_bar))
  SSxx <- sum((x - x_bar)^2)

  beta_1 <- SSxy / SSxx
  beta_0 <- y_bar - beta_1 * x_bar

  fitted_values <- beta_0 + beta_1 * x
  residuals <- y - fitted_values
  RSS <- sum(residuals^2)

  # Standard Errors
  se_beta_1 <- sqrt(RSS / (n - 2) / SSxx)
  se_beta_0 <- sqrt(RSS / (n - 2) / SSxx) * sqrt(sum(x^2) / n)

  # t-statistics
  t_beta_1 <- beta_1 / se_beta_1
  t_beta_0 <- beta_0 / se_beta_0

  # p-values
  p_beta_1 <- 2 * pt(-abs(t_beta_1), df = n - 2)
  p_beta_0 <- 2 * pt(-abs(t_beta_0), df = n - 2)

  list(
    intercept = beta_0, slope = beta_1,
    residuals = residuals, RSS = RSS,
    standard_error_intercept = se_beta_0, standard_error_slope = se_beta_1,
    t_statistic_intercept = t_beta_0, t_statistic_slope = t_beta_1,
    p_value_intercept = p_beta_0, p_value_slope = p_beta_1
  )
}
