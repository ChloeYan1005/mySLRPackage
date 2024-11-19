# mySLRPackage
[![R-CMD-check.yaml](https://github.com/ChloeYan1005/mySLRPackage/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ChloeYan1005/mySLRPackage/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/github/ChloeYan1005/mySLRPackage/graph/badge.svg?token=70YZ9W0IAB)](https://codecov.io/github/ChloeYan1005/mySLRPackage)
## Overview

The goal of `mySLRPackage` is to provides a simple implementation of simple linear regression (SLR). It is designed to offer an straightforward way to perform SLR analyses, providing clear outputs for intercept, slope, and other relevant statistical tests.

## Installation

To install the latest development version of `mySLRPackage` from GitHub, use:

``` r
# install.packages("devtools")
devtools::install_github("yourgithubusername/mySLRPackage")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(mySLRPackage)
x <- 1:10
y <- 2 + 3 * x + rnorm(10)
slr(x, y)
```
