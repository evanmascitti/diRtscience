
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![packageversion](https://img.shields.io/badge/Package%20version-0.0.2.9009-orange.svg?style=flat-square)](commits/master)
[![Last-changedate](https://img.shields.io/badge/last%20change-2021--01--29-yellowgreen.svg)](/commits/master)

<!-- badges: end -->

## Utility

**soiltestr** is built to help collect and analyze laboratory soil test
data. I wrote the functions for my own use, but other soil scientists
may find them of value. The code streamlines commonly performed tests:
particle size analysis, Atterberg limits, Proctor maximum density, and
particle density (specific gravity).

## Installation

A binary version of `soiltestr` is not yet available on CRAN. Install
the development version with the following command:

``` r
remotes::install_github("evanmascitti/soiltestr")
```

<!-- The best way to learn about this package is through the vignettes  -->
<!-- un-comment this line once the vignettes are added  -->

## Functions

Below are one-line overviews of each function’s purpose:

### Data analysis

`add_w()`: Calculate gravimetric water content and add to an existing
data frame

`add_physical_properties()` Compute various metrics from raw Proctor
data

`proctor_prep()`: Specimen preparation for Proctor compaction tests

`proctor_fit()`: Fit a compaction curve to compute w<sub>opt</sub> and
ρ<sub>max</sub>

`d_max()` Fit a compaction curve and compute the maximum density only.

`w_opt()` Fit a compaction curve and compute the optimum water content
only.

`compute_LL()` calculate the liquid limit from water contents and blow
counts

### Visualization

`ggproctor()` plotting compaction curves with **ggplot2**

`ggflowcurve()` plotting liquid limit data with **ggplot2**

`casagrande_chart()` display Atterberg limits on the traditional LL vs
PI scatterplot, with U-line and A-line plotted

### Data managmement and reference sheets

`mix_calcs()`: Precise calculations for sand-clay soil mixtures

#### Populate skeleton .csv files for data collection (function names self-explanatory)

`generate_proctor_datasheet()`

`new_PL_datasheet()`

`new_LL_datasheet()`

`new_pipette_datasheets()` \*creates multiple sheets for the different
types of data required in this analysis

## Standard method references

The standardized soil tests which may be deployed using this package
include:

#### Particle size analysis

-   Hydrometer method: [ASTM
    D7928-17](https://www.astm.org/Standards/D7928.htm)
-   Pipette method: [SSSA Methods of Soil Analysis, Part
    4](https://www.wiley.com/en-us/Methods+of+Soil+Analysis%2C+Part+4%3A+Physical+Methods-p-9780891188933)

#### Proctor compaction

-   Standard effort: [ASTM
    D698-12e2](https://www.astm.org/Standards/D698.htm)
-   Modified effort: [ASTM
    D1557-12e1](https://www.astm.org/Standards/D1557)

#### Atterberg limits

-   Canonical thread-rolling/Casagrande cup: [ASTM
    D4318-17e1](https://www.astm.org/Standards/D4318)
