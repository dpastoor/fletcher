
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fletcher

The goal of fletcher is to convert [quiver
notebooks](http://happenapps.com/#quiver) to markdown documents.

## Installation

You can install the released version of fletcher from
[CRAN](https://CRAN.R-project.org) with:

``` r
remotes::install_github("dpastoor/fletcher")
```

## motivation

Quiver is a fantastic tool for documenting, however there are some
limitations, such as being mac only and rendering only within the quiver
app. In many cases, creating documentation makes sense within quiver,
taking advantages of its functionality to easily embed images via
copy/paste, code cells for organization, search functionality, etc. Once
docs need to be pushed to git, or other knowledge bases, a more standard
format might be needed. This tool allows the seemless translation
between the quiver cells (code/markdown) to markdown documents.

``` r
devtools::session_info()
#> Session info -------------------------------------------------------------
#>  setting  value                       
#>  version  R version 3.4.3 (2017-11-30)
#>  system   x86_64, darwin17.4.0        
#>  ui       unknown                     
#>  language (EN)                        
#>  collate  en_US.UTF-8                 
#>  tz       America/New_York            
#>  date     2018-04-15
#> Packages -----------------------------------------------------------------
#>  package   * version date       source                         
#>  backports   1.1.2   2017-12-13 CRAN (R 3.4.2)                 
#>  base      * 3.4.3   2018-03-12 local                          
#>  compiler    3.4.3   2018-03-12 local                          
#>  datasets  * 3.4.3   2018-03-12 local                          
#>  devtools    1.13.3  2017-08-02 CRAN (R 3.4.2)                 
#>  digest      0.6.15  2018-01-28 CRAN (R 3.4.2)                 
#>  evaluate    0.10.1  2017-06-24 CRAN (R 3.4.2)                 
#>  graphics  * 3.4.3   2018-03-12 local                          
#>  grDevices * 3.4.3   2018-03-12 local                          
#>  htmltools   0.3.6   2017-04-28 CRAN (R 3.4.2)                 
#>  knitr       1.20    2018-02-20 CRAN (R 3.4.2)                 
#>  magrittr    1.5     2014-11-22 CRAN (R 3.4.2)                 
#>  memoise     1.1.0   2017-10-20 Github (hadley/memoise@d63ae9c)
#>  methods   * 3.4.3   2018-03-12 local                          
#>  Rcpp        0.12.16 2018-03-13 CRAN (R 3.4.3)                 
#>  rmarkdown   1.9     2018-03-01 CRAN (R 3.4.3)                 
#>  rprojroot   1.3-2   2018-01-03 CRAN (R 3.4.2)                 
#>  stats     * 3.4.3   2018-03-12 local                          
#>  stringi     1.1.7   2018-03-12 CRAN (R 3.4.3)                 
#>  stringr     1.3.0   2018-02-19 CRAN (R 3.4.2)                 
#>  tools       3.4.3   2018-03-12 local                          
#>  utils     * 3.4.3   2018-03-12 local                          
#>  withr       2.1.2   2018-03-15 CRAN (R 3.4.3)                 
#>  yaml        2.1.16  2017-12-12 CRAN (R 3.4.2)
```
