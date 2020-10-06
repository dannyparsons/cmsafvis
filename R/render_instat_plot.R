#' Creating a simple instat plot.
#'
#' This function creates a simple r-instat plot.
#'
#' @inheritParams render_plot
#' @param co.data Statistics given to hist plot (data.frame).
#' @param shortDescription A title will be generated using "Comparison of" + description (character).
#' @param ylab Label for y axis (character).
#'
#' @export
#'
#' @examples
#' co.data <- list(
#'   lon_station = c(1,2,3),
#'   lat_station = c(10,20,30),
#'   data_station = c(1,2,3),
#'   data_sat = c(4,3,2)
#' )
#'
#' render_instat_plot(
#'   co.data = co.data,
#'   shortDescription = "thing 1 vs thing 2",
#'   grid_col = "cornsilk2",
#'   bordercolor = "gray20",
#'   linesize = 1.2,
#'   ylab = "y label"
#' )
#'
render_instat_plot <- function(co.data,
                               shortDescription,
                               grid_col,
                               bordercolor,
                               linesize,
                               ylab) {
  # Make sure that any user settings are reset when the function exits
  # This is a requirement by CRAN
  oldpar <- graphics::par(no.readonly = TRUE)
  # Warning: In graphics::par(oldpar) : par(new) ohne Plot aufgerufen
  on.exit(suppressWarnings(graphics::par(oldpar)))

  assertthat::assert_that(is.character(shortDescription))
  assertthat::assert_that(is.character(ylab))

  lo <- as.numeric(co.data$lon_station)
  la <- as.numeric(co.data$lat_station)
  st <- co.data$data_station
  sa <- co.data$data_sat
  st <- st[order(la)]
  sa <- sa[order(la)]
  lo <- lo[order(la)]
  la <- la[order(la)]
  xlabs <- NULL
  for (i in seq_along(st)) {
    dummy <- paste0("[", round(lo[i], digits = 1), ";", round(la[i], digits = 1), "]")
    xlabs <- append(xlabs, dummy)
  }
  rd <- rbind(st, sa)
  rownames(rd) <- c("R-Instat data", "Your data")
  graphics::par(mar = c(6, 5, 3, 2))
  graphics::barplot(rd,
                    beside = TRUE,
                    main = paste0("Comparison of ", shortDescription),
                    ylab = ylab,
                    names.arg = xlabs,
                    col = c(grDevices::rgb(0, 32, 91, maxColorValue = 255),
                            grDevices::rgb(242, 169, 0, maxColorValue = 255)),
                    las = 2)
  graphics::rect(graphics::par("usr")[1],
                 graphics::par("usr")[3],
                 graphics::par("usr")[2],
                 graphics::par("usr")[4],
                 col = "light grey")
  graphics::grid(NULL,
                 NULL,
                 lty = 3,
                 col = grid_col,
                 lwd = 1.5)
  graphics::barplot(rd,
                    beside = TRUE,
                    ylab = ylab,
                    names.arg = xlabs,
                    col = c(
                      grDevices::rgb(0, 32, 91, maxColorValue = 255),
                      grDevices::rgb(242, 169, 0, maxColorValue = 255)),
                    las = 2,
                    add = TRUE,
                    legend.text = c("Surface", "Satellite"))
  graphics::box(col = bordercolor, lwd = linesize)
}
