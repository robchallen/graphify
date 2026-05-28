build_plot <- function(data) {
  library(ggplot2)
  transformed <- helper(data)
  ggplot(transformed)
}

main <- function(data) {
  source("helpers.R")
  build_plot(data)
  stats::lm(y ~ x, data = data)
}
