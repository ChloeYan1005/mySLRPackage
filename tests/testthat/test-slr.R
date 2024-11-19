test_that("slr works", {
  data <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 4, 6, 8, 10))
  result <- slr(data$x, data$y)
  expect_equal(result$intercept, 0)
  expect_equal(result$slope, 2)
})
