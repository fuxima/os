#' Generate synthetic survival data
#'
#' Creates a dataset with simulated survival times and covariates
#'
#' @title Generate Survival Data
#' @name generate_survival_data
#' @param n Number of patients (default: 300)
#' @return A data.frame with columns: patient_id, time_days, time_years, status, sex, age
#' @export
#' @importFrom stats rweibull rbinom rnorm
generate_survival_data <- function(n = 300) {
  set.seed(123)
  df <- data.frame(
    patient_id = 1:n,
    time_days = round(rweibull(n, shape = 0.8, scale = 300)),
    status = rbinom(n, size = 1, prob = 0.7),
    sex = factor(sample(1:2, n, replace = TRUE),
                 levels = 1:2, labels = c("Male", "Female")),
    age = round(rnorm(n, mean = 62, sd = 8))
  )
  df$time_years <- df$time_days / 365.25
  df
}
