Iteration
================

``` r
library(tidyverse)
library(rvest)
library(readxl)

set.seed(1)
```

## Functions

Start small with Z scores

``` r
x_vec = rnorm(n = 40, mean = 12, sd = 63)

(x_vec - mean(x_vec)) / sd(x_vec)
```

    ##  [1] -0.81031547  0.10332757 -1.04622681  1.69539931  0.26783628 -1.02912882
    ##  [7]  0.44594292  0.72890784  0.54558833 -0.44821175  1.60122683  0.33588377
    ## [13] -0.80443589 -2.60156977  1.16492972 -0.15446587 -0.12204857  0.96068764
    ## [19]  0.82240008  0.56602438  0.93265137  0.77831939 -0.01969307 -2.34741777
    ## [25]  0.59526245 -0.16709195 -0.27949804 -1.76253155 -0.64305566  0.36757360
    ## [31]  1.42855590 -0.21971485  0.33343457 -0.16447124 -1.65686299 -0.57182769
    ## [37] -0.54847663 -0.17068367  1.13684077  0.75693532

Turn this into a function

``` r
z_scores = function(x) {
  
   if (!is.numeric(x)) {
    stop("Argument x should be numeric")
  } else if (length(x) == 1) {
    stop("Z scores cannot be computed for length 1 vectors")
  }
  
  z = (x - mean(x)) / sd(x) 
  
  return(z)
  
}
```

Checking if it works

``` r
z_scores(x_vec)
z_scores(rpois(4000, lambda = 12))
```

^ this works just lots of numbers

``` r
z_scores(c(TRUE, TRUE, FALSE, FALSE))
z_scores("HELLOOOOO")
```

^ this doesn’t

## Mean and SD

``` r
mean(x_vec)
```

    ## [1] 17.79765

``` r
sd(x_vec)
```

    ## [1] 55.86002

Write a function that returns mean and sd of an input vector.

``` r
source("source/mean_and_sd.R")
```

Check that this works

``` r
mean_and_sd(x_vec)
```

    ## # A tibble: 1 × 2
    ##    mean    sd
    ##   <dbl> <dbl>
    ## 1  17.8  55.9

## Motivate and write another one

``` r
source("source/sim_mean_sd.R")
```

``` r
sim_mean_sd(n_obs = 4, mu = 12, sigma = 12)
```

    ## # A tibble: 1 × 2
    ##    mean    sd
    ##   <dbl> <dbl>
    ## 1  14.5  5.85
