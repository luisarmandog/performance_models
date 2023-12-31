test_that("r2 lm", {
  data(iris)
  model <- lm(Sepal.Length ~ Species + Petal.Length, data = iris)
  out <- r2(model)
  expect_equal(out$R2, c(R2 = 0.83672), tolerance = 1e-3)
  expect_equal(out$R2_adjusted, c(`adjusted R2` = 0.83337), tolerance = 1e-3)
})

test_that("r2 lm, ci", {
  data(iris)
  model <- lm(Sepal.Length ~ Species + Petal.Length, data = iris)
  out <- r2(model, ci = 0.95)
  expect_equal(
    out$R2,
    c(R2 = 0.83672, CI_low = 0.77725, CI_high = 0.87665),
    tolerance = 1e-3
  )
  expect_equal(
    out$R2_adjusted,
    c(`adjusted R2` = 0.83337, CI_low = 0.77282, CI_high = 0.87406),
    tolerance = 1e-3
  )
})

test_that("r2 glm", {
  data(mtcars)
  model <- glm(am ~ mpg, data = mtcars)
  out <- r2(model)
  expect_equal(out$R2, c(R2 = 0.3598), tolerance = 1e-3)
})

test_that("r2 glm, ci", {
  data(mtcars)
  model <- glm(am ~ mpg, data = mtcars)
  out <- r2(model, ci = 0.95)
  expect_equal(
    out$R2,
    c(R2 = 0.3598, CI_low = 0.09758, CI_high = 0.6066),
    tolerance = 1e-3
  )
})
