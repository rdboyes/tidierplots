data_frame_toDataFrame <- function(x){
  if ("data.frame" %in% class(x)){
    df <- JuliaConnectoR::juliaImport("DataFrames")
    return(df$DataFrame(x))
  } else {
    return(x)
  }
}

tp_template <- function(name){
  return(
    function(...){
      tp <- JuliaConnectoR::juliaImport("TidierPlots")
      args <- rlang::list2(...) |> 
        purrr::map(.f = data_frame_toDataFrame)
      result <- do.call(tp[[name]], args)
      return(result)
    }
  )
}

#' theme_black
#'
#' TidierPlots wrapper for ggplot2::theme_black.
#' @export
theme_black <- tp_template("theme_black")

#' theme_dark
#'
#' TidierPlots wrapper for ggplot2::theme_dark.
#' @export
theme_dark <- tp_template("theme_dark")

#' theme_ggplot2
#'
#' TidierPlots wrapper for ggplot2::theme_ggplot2.
#' @export
theme_ggplot2 <- tp_template("theme_ggplot2")

#' theme_light
#'
#' TidierPlots wrapper for ggplot2::theme_light.
#' @export
theme_light <- tp_template("theme_light")

#' theme_minimal
#'
#' TidierPlots wrapper for ggplot2::theme_minimal.
#' @export
theme_minimal <- tp_template("theme_minimal")

#' theme
#'
#' TidierPlots wrapper for ggplot2::theme.
#' @export
theme <- tp_template("theme")

#' draw_ggplot
#'
#' TidierPlots wrapper for ggplot2::draw_ggplot.
#' @export
draw_ggplot <- tp_template("draw_ggplot")

#' ggplot
#'
#' TidierPlots wrapper for ggplot2::ggplot.
#' @export
ggplot <- tp_template("ggplot")

#' ggsave
#'
#' TidierPlots wrapper for ggplot2::ggsave.
#' @export
ggsave <- tp_template("ggsave")

#' TidierPlots_set
#'
#' Configure global TidierPlots options.
#' @export
TidierPlots_set <- tp_template("TidierPlots_set")

#' aes
#'
#' TidierPlots wrapper for ggplot2 aesthetic mappings.
#' @export
aes <- tp_template("aes")

#' @aes
#'
#' Non-standard evaluation aesthetic helper.
#' @export
`@aes` <- tp_template("@aes")

#' @es
#'
#' Non-standard evaluation aesthetic helper.
#' @export
`@es` <- tp_template("@es")

#' geom_template
#'
#' Base geometry template for TidierPlots.
#' @export
geom_template <- tp_template("geom_template")

#' plot_layout
#'
#' Layout helper for multi-panel plots.
#' @export
plot_layout <- tp_template("plot_layout")

# ---- Geoms ----

#' geom_bar
#'
#' TidierPlots wrapper for ggplot2::geom_bar.
#' @export
geom_bar <- tp_template("geom_bar")

#' geom_col
#'
#' TidierPlots wrapper for ggplot2::geom_col.
#' @export
geom_col <- tp_template("geom_col")

#' geom_histogram
#'
#' TidierPlots wrapper for ggplot2::geom_histogram.
#' @export
geom_histogram <- tp_template("geom_histogram")

#' geom_point
#'
#' TidierPlots wrapper for ggplot2::geom_point.
#' @export
geom_point <- tp_template("geom_point")

#' geom_path
#'
#' TidierPlots wrapper for ggplot2::geom_path.
#' @export
geom_path <- tp_template("geom_path")

#' geom_line
#'
#' TidierPlots wrapper for ggplot2::geom_line.
#' @export
geom_line <- tp_template("geom_line")

#' geom_step
#'
#' TidierPlots wrapper for ggplot2::geom_step.
#' @export
geom_step <- tp_template("geom_step")

#' geom_smooth
#'
#' TidierPlots wrapper for ggplot2::geom_smooth.
#' @export
geom_smooth <- tp_template("geom_smooth")

#' geom_errorbar
#'
#' TidierPlots wrapper for ggplot2::geom_errorbar.
#' @export
geom_errorbar <- tp_template("geom_errorbar")

#' geom_errorbarh
#'
#' TidierPlots wrapper for ggplot2::geom_errorbarh.
#' @export
geom_errorbarh <- tp_template("geom_errorbarh")

#' geom_violin
#'
#' TidierPlots wrapper for ggplot2::geom_violin.
#' @export
geom_violin <- tp_template("geom_violin")

#' geom_boxplot
#'
#' TidierPlots wrapper for ggplot2::geom_boxplot.
#' @export
geom_boxplot <- tp_template("geom_boxplot")

#' geom_tile
#'
#' TidierPlots wrapper for ggplot2::geom_tile.
#' @export
geom_tile <- tp_template("geom_tile")

#' geom_text
#'
#' TidierPlots wrapper for ggplot2::geom_text.
#' @export
geom_text <- tp_template("geom_text")

#' geom_label
#'
#' TidierPlots wrapper for ggplot2::geom_label.
#' @export
geom_label <- tp_template("geom_label")

#' geom_density
#'
#' TidierPlots wrapper for ggplot2::geom_density.
#' @export
geom_density <- tp_template("geom_density")

#' geom_hline
#'
#' TidierPlots wrapper for ggplot2::geom_hline.
#' @export
geom_hline <- tp_template("geom_hline")

#' geom_vline
#'
#' TidierPlots wrapper for ggplot2::geom_vline.
#' @export
geom_vline <- tp_template("geom_vline")

#' geom_rainclouds
#'
#' TidierPlots wrapper for raincloud plots.
#' @export
geom_rainclouds <- tp_template("geom_rainclouds")

#' geom_contour
#'
#' TidierPlots wrapper for ggplot2::geom_contour.
#' @export
geom_contour <- tp_template("geom_contour")

#' geom_contour_filled
#'
#' TidierPlots wrapper for ggplot2::geom_contour_filled.
#' @export
geom_contour_filled <- tp_template("geom_contour_filled")

#' geom_density_2d
#'
#' TidierPlots wrapper for ggplot2::geom_density_2d.
#' @export
geom_density_2d <- tp_template("geom_density_2d")

#' geom_density_2d_filled
#'
#' TidierPlots wrapper for ggplot2::geom_density_2d_filled.
#' @export
geom_density_2d_filled <- tp_template("geom_density_2d_filled")

#' geom_density2d
#'
#' TidierPlots wrapper for ggplot2::geom_density2d.
#' @export
geom_density2d <- tp_template("geom_density2d")

#' geom_density2d_filled
#'
#' TidierPlots wrapper for ggplot2::geom_density2d_filled.
#' @export
geom_density2d_filled <- tp_template("geom_density2d_filled")

#' geom_jitter
#'
#' TidierPlots wrapper for ggplot2::geom_jitter.
#' @export
geom_jitter <- tp_template("geom_jitter")

#' geom_segment
#'
#' TidierPlots wrapper for ggplot2::geom_segment.
#' @export
geom_segment <- tp_template("geom_segment")

#' geom_area
#'
#' TidierPlots wrapper for ggplot2::geom_area.
#' @export
geom_area <- tp_template("geom_area")

#' geom_ribbon
#'
#' TidierPlots wrapper for ggplot2::geom_ribbon.
#' @export
geom_ribbon <- tp_template("geom_ribbon")

#' geom_linerange
#'
#' TidierPlots wrapper for ggplot2::geom_linerange.
#' @export
geom_linerange <- tp_template("geom_linerange")

#' geom_pointrange
#'
#' TidierPlots wrapper for ggplot2::geom_pointrange.
#' @export
geom_pointrange <- tp_template("geom_pointrange")

#' geom_polygon
#'
#' TidierPlots wrapper for ggplot2::geom_polygon.
#' @export
geom_polygon <- tp_template("geom_polygon")

#' geom_rect
#'
#' TidierPlots wrapper for ggplot2::geom_rect.
#' @export
geom_rect <- tp_template("geom_rect")
