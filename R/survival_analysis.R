#' Perform survival analysis
#'
#' Fits Kaplan-Meier survival curves by sex
#'
#' @title Analyze Survival
#' @name analyze_survival
#' @param data Input data.frame from generate_survival_data()
#' @return A survfit object
#' @export
#' @importFrom survival survfit Surv
analyze_survival <- function(data) {
  survival::survfit(survival::Surv(time_years, status) ~ sex, data = data)
}
