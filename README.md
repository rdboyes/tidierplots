
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidierplots

<!-- badges: start -->

<!-- badges: end -->

tidierplots is a wrapper for
[TidierPlots.jl](https://github.com/TidierOrg/TidierPlots.jl), a
reimplementation of [ggplot2](https://ggplot2.tidyverse.org/index.html)
in [julia](https://julialang.org/). It allows you to use ggplot syntax
to generate plots using a julia backend powered by
[Makie.jl](https://docs.makie.org/stable/)

## Installation

You can install the development version of tidierplots like so:

``` r
devtools::install_github("rdboyes/tidierplots")
```

## Example

``` r
library(tidierplots)
#> 
#> Attaching package: 'tidierplots'
#> The following object is masked from 'package:base':
#> 
#>     c

TidierPlots_set("plot_pluto", TRUE)
#> Starting Julia ...
#> [1] TRUE

xs = 10 ^ (seq(from = -1, to=1, length.out=100))

df = data.frame(x = xs,
    y = xs ^ 2 + abs(2 * runif(length(xs))),
    size = rev((xs ^ 2/3) + 6))

ggplot(df) |>
    geom_point(aes(x = "x", y = "y", size = "size", color = "x"), alpha = 0.8) |>
    scale_x_log10() |>
    scale_y_log10() |>
    labs(x = "x", y = "y") |>
    lims(y = c(.1, 100)) |>
    scale_color_continuous(palette = "Hiroshige", name = "") |>
    theme_minimal()
#> <Julia object of type TidierPlots.GGPlot>
```
