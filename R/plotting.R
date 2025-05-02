#' Plot survival curves
#'
#' @param fit survfit object
#' @export
plot_survival <- function(fit) {
  survminer::ggsurvplot(fit,
                        conf.int = TRUE,
                        pval = TRUE,
                        risk.table = TRUE,
                        xlab = "Time (years)")
}
