#' Plot survival curves
#'
#' Creates Kaplan-Meier plots with confidence intervals
#'
#' @title Plot Survival
#' @name plot_survival
#' @param fit survfit object from analyze_survival()
#' @return A ggsurvplot object
#' @export
#' @importFrom survminer ggsurvplot
NULL  # Add this line if you have other survminer imports

plot_survival <- function(fit) {
  survminer::ggsurvplot(fit)  # Explicit namespace reference
}
