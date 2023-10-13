test_that("Multiserver function works", {
  Arrivals <- c(1, 2, 3, 4)
  ServiceTimes <- c(0.5, 1, 1.5, 2)
  NumServers <- 2

  #Make sure that the result is a data frame
  expect_true(is.data.frame(Multiserver(Arrivals, ServiceTimes, NumServers)),
              info = "Result should be a data frame")

  #Test for the error message because of negative inputs
  expect_error(
    Multiserver(Arrivals = c(1, 2, 3), ServiceTimes = c(-0.5, 1, 1.5), NumServers = 0),
    "Arrivals, ServiceTimes must be positive & NumServers must be positive"
  )
})
