# data-raw/synthetic_lung.R
#' Generate synthetic lung cancer survival dataset
#'
#' This script creates the example dataset for the OS package

set.seed(123)
n <- 300

# Create base dataset
synthetic_lung <- data.frame(
  patient_id = 1:n,
  time_days = round(rweibull(n, shape = 0.8, scale = 300)),
  status = rbinom(n, size = 1, prob = 0.7),
  sex = factor(sample(1:2, n, replace = TRUE, prob = c(0.6, 0.4)),
               levels = 1:2, labels = c("Male", "Female")),
  age = round(rnorm(n, mean = 62, sd = 8))
)

# Add time in years and censoring
synthetic_lung <- within(synthetic_lung, {
  time_years <- time_days / 365.25
  status[time_years > quantile(time_years, 0.8)] <- 0
})

# Save to package data directory
usethis::use_data(synthetic_lung, overwrite = TRUE)
