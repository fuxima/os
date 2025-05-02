#' Perform survival analysis
#' @param data Input dataframe
#' @export
analyze_survival <- function(data) {
  survival::survfit(survival::Surv(time_years, status) ~ sex, data = data)
}
