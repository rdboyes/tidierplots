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

# ---- Facetting ----

#' facet_wrap
#'
#' TidierPlots wrapper for ggplot2::facet_wrap.
#' @export
facet_wrap <- tp_template("facet_wrap")

#' facet_grid
#'
#' TidierPlots wrapper for ggplot2::facet_grid.
#' @export
facet_grid <- tp_template("facet_grid")

# ---- Labels, limits, guides ----

#' labs
#'
#' TidierPlots wrapper for ggplot2::labs.
#' @export
labs <- tp_template("labs")

#' lims
#'
#' TidierPlots wrapper for ggplot2::lims.
#' @export
lims <- tp_template("lims")

#' guides
#'
#' TidierPlots wrapper for ggplot2::guides.
#' @export
guides <- tp_template("guides")

# ---- Label formatters ----

#' label_bytes
#'
#' TidierPlots wrapper for scales::label_bytes.
#' @export
label_bytes <- tp_template("label_bytes")

#' label_currency
#'
#' TidierPlots wrapper for scales::label_currency.
#' @export
label_currency <- tp_template("label_currency")

#' label_date
#'
#' TidierPlots wrapper for scales::label_date.
#' @export
label_date <- tp_template("label_date")

#' label_log
#'
#' TidierPlots wrapper for scales::label_log.
#' @export
label_log <- tp_template("label_log")

#' label_number
#'
#' TidierPlots wrapper for scales::label_number.
#' @export
label_number <- tp_template("label_number")

#' label_ordinal
#'
#' TidierPlots wrapper for scales::label_ordinal.
#' @export
label_ordinal <- tp_template("label_ordinal")

#' label_percent
#'
#' TidierPlots wrapper for scales::label_percent.
#' @export
label_percent <- tp_template("label_percent")

#' label_pvalue
#'
#' TidierPlots wrapper for scales::label_pvalue.
#' @export
label_pvalue <- tp_template("label_pvalue")

#' label_scientific
#'
#' TidierPlots wrapper for scales::label_scientific.
#' @export
label_scientific <- tp_template("label_scientific")

#' label_wrap
#'
#' TidierPlots wrapper for scales::label_wrap.
#' @export
label_wrap <- tp_template("label_wrap")

# ---- Position scales ----

#' scale_x_continuous
#'
#' TidierPlots wrapper for ggplot2::scale_x_continuous.
#' @export
scale_x_continuous <- tp_template("scale_x_continuous")

#' scale_y_continuous
#'
#' TidierPlots wrapper for ggplot2::scale_y_continuous.
#' @export
scale_y_continuous <- tp_template("scale_y_continuous")

#' scale_x_log10
#'
#' TidierPlots wrapper for ggplot2::scale_x_log10.
#' @export
scale_x_log10 <- tp_template("scale_x_log10")

#' scale_y_log10
#'
#' TidierPlots wrapper for ggplot2::scale_y_log10.
#' @export
scale_y_log10 <- tp_template("scale_y_log10")

#' scale_x_log2
#'
#' TidierPlots wrapper for ggplot2::scale_x_log2.
#' @export
scale_x_log2 <- tp_template("scale_x_log2")

#' scale_y_log2
#'
#' TidierPlots wrapper for ggplot2::scale_y_log2.
#' @export
scale_y_log2 <- tp_template("scale_y_log2")

#' scale_x_log
#'
#' TidierPlots wrapper for ggplot2::scale_x_log.
#' @export
scale_x_log <- tp_template("scale_x_log")

#' scale_y_log
#'
#' TidierPlots wrapper for ggplot2::scale_y_log.
#' @export
scale_y_log <- tp_template("scale_y_log")

#' scale_x_logit
#'
#' TidierPlots wrapper for ggplot2::scale_x_logit.
#' @export
scale_x_logit <- tp_template("scale_x_logit")

#' scale_y_logit
#'
#' TidierPlots wrapper for ggplot2::scale_y_logit.
#' @export
scale_y_logit <- tp_template("scale_y_logit")

#' scale_x_pseudolog10
#'
#' TidierPlots wrapper for ggplot2::scale_x_pseudolog10.
#' @export
scale_x_pseudolog10 <- tp_template("scale_x_pseudolog10")

#' scale_y_pseudolog10
#'
#' TidierPlots wrapper for ggplot2::scale_y_pseudolog10.
#' @export
scale_y_pseudolog10 <- tp_template("scale_y_pseudolog10")

#' scale_x_symlog10
#'
#' TidierPlots wrapper for ggplot2::scale_x_symlog10.
#' @export
scale_x_symlog10 <- tp_template("scale_x_symlog10")

#' scale_y_symlog10
#'
#' TidierPlots wrapper for ggplot2::scale_y_symlog10.
#' @export
scale_y_symlog10 <- tp_template("scale_y_symlog10")

#' scale_x_reverse
#'
#' TidierPlots wrapper for ggplot2::scale_x_reverse.
#' @export
scale_x_reverse <- tp_template("scale_x_reverse")

#' scale_y_reverse
#'
#' TidierPlots wrapper for ggplot2::scale_y_reverse.
#' @export
scale_y_reverse <- tp_template("scale_y_reverse")

#' scale_x_sqrt
#'
#' TidierPlots wrapper for ggplot2::scale_x_sqrt.
#' @export
scale_x_sqrt <- tp_template("scale_x_sqrt")

#' scale_y_sqrt
#'
#' TidierPlots wrapper for ggplot2::scale_y_sqrt.
#' @export
scale_y_sqrt <- tp_template("scale_y_sqrt")

# ---- Colour scales ----

#' scale_colour_continuous
#'
#' TidierPlots wrapper for ggplot2::scale_colour_continuous.
#' @export
scale_colour_continuous <- tp_template("scale_colour_continuous")

#' scale_colour_discrete
#'
#' TidierPlots wrapper for ggplot2::scale_colour_discrete.
#' @export
scale_colour_discrete <- tp_template("scale_colour_discrete")

#' scale_colour_manual
#'
#' TidierPlots wrapper for ggplot2::scale_colour_manual.
#' @export
scale_colour_manual <- tp_template("scale_colour_manual")

#' scale_colour_binned
#'
#' TidierPlots wrapper for ggplot2::scale_colour_binned.
#' @export
scale_colour_binned <- tp_template("scale_colour_binned")

# ---- Color scales (US spelling) ----

#' scale_color_continuous
#'
#' TidierPlots wrapper for ggplot2::scale_color_continuous.
#' @export
scale_color_continuous <- tp_template("scale_color_continuous")

#' scale_color_discrete
#'
#' TidierPlots wrapper for ggplot2::scale_color_discrete.
#' @export
scale_color_discrete <- tp_template("scale_color_discrete")

#' scale_color_manual
#'
#' TidierPlots wrapper for ggplot2::scale_color_manual.
#' @export
scale_color_manual <- tp_template("scale_color_manual")

#' scale_color_binned
#'
#' TidierPlots wrapper for ggplot2::scale_color_binned.
#' @export
scale_color_binned <- tp_template("scale_color_binned")

# ---- Fill scales ----

#' scale_fill_continuous
#'
#' TidierPlots wrapper for ggplot2::scale_fill_continuous.
#' @export
scale_fill_continuous <- tp_template("scale_fill_continuous")

#' scale_fill_discrete
#'
#' TidierPlots wrapper for ggplot2::scale_fill_discrete.
#' @export
scale_fill_discrete <- tp_template("scale_fill_discrete")

#' scale_fill_manual
#'
#' TidierPlots wrapper for ggplot2::scale_fill_manual.
#' @export
scale_fill_manual <- tp_template("scale_fill_manual")

#' scale_fill_binned
#'
#' TidierPlots wrapper for ggplot2::scale_fill_binned.
#' @export
scale_fill_binned <- tp_template("scale_fill_binned")

# ---- Other aesthetics ----

#' scale_alpha
#'
#' TidierPlots wrapper for ggplot2::scale_alpha.
#' @export
scale_alpha <- tp_template("scale_alpha")

#' scale_alpha_continuous
#'
#' TidierPlots wrapper for ggplot2::scale_alpha_continuous.
#' @export
scale_alpha_continuous <- tp_template("scale_alpha_continuous")

#' scale_size
#'
#' TidierPlots wrapper for ggplot2::scale_size.
#' @export
scale_size <- tp_template("scale_size")

#' scale_shape
#'
#' TidierPlots wrapper for ggplot2::scale_shape.
#' @export
scale_shape <- tp_template("scale_shape")

#' scale_linewidth
#'
#' TidierPlots wrapper for ggplot2::scale_linewidth.
#' @export
scale_linewidth <- tp_template("scale_linewidth")
