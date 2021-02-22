Transmission benefits
================

One presumed advantage of complex life cycles is that they facilitate
transmission. To explore this, we compare the mass ratio of parasites’
current and next hosts with predator and prey mass ratios. These
parasites are trophically transmitted, so if parasites infect predators
that are extremely large (or small) relative to their prey, then we
might expect lower transmission rates.

For the first host stage, propagule size was taken as the prey mass. In
all other parasite stages, prey mass was the size of the current host
and predator mass the size of the next host.

Here is a plot of next host mass vs current host (or propagule) mass.
Clearly, the ratio between first host size and propagule size differs
among life cycle lengths.

![](transmission_pp_impute_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

We wish to compare this parasite data to “typical” predator-prey feeding
interactions. For that, we use data from [Brose et
al. 2019](https://www.nature.com/articles/s41559-019-0899-x?proof=true&draft=collection%3Fproof%3Dtrue).

This is the number of unique trophic links in the data.

    ## [1] 87624

Next, we plot parasite trophic links on top of the large set of predator
prey links. Parasites tend fall on the upper part of the plot, i.e. they
infect large predators given the mass of the prey. In other words, next
hosts are large relative to current hosts.

![](transmission_pp_impute_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

Let’s quantify this. Since prey and predator mass are estimated with
similar error, major axis regression is appropriate. That is also the
method used by Brose et al.

Here are the results from that model. The MA regression has a higher
intercept and steeper slope than the ordinary least squares regression.

    ## 
    ## Model II regression
    ## 
    ## Call: lmodel2(formula = log(con_g) ~ log(res_g), data = brose)
    ## 
    ## n = 87624   r = 0.5296653   r-square = 0.2805454 
    ## Parametric P-values:   2-tailed = 0    1-tailed = 0 
    ## Angle between the two OLS regression lines = 33.6143 degrees
    ## 
    ## Regression results
    ##   Method Intercept     Slope Angle (degrees) P-perm (1-tailed)
    ## 1    OLS 0.3355998 0.4302926        23.28185                NA
    ## 2     MA 2.3705910 0.6801140        34.22017                NA
    ## 3    SMA 3.4480496 0.8123859        39.08992                NA
    ## 
    ## Confidence intervals
    ##   Method 2.5%-Intercept 97.5%-Intercept 2.5%-Slope 97.5%-Slope
    ## 1    OLS      0.2854252       0.3857745  0.4257300   0.4348552
    ## 2     MA      2.3120428       2.4295332  0.6729264   0.6873499
    ## 3    SMA      3.4109880       3.4853198  0.8078361   0.8169613
    ## 
    ## Eigenvalues: 70.55288 20.04852 
    ## 
    ## H statistic used for computing C.I. of MA: 2.431276e-05

Here is the plot comparing the MA (dashed) and OLS (solid) regressions.
The MA seems better.

![](transmission_pp_impute_files/figure-gfm/unnamed-chunk-15-1.png)<!-- -->

Now we can split that plot by life cycle length to see how worms with
different life cycle compare. Worms with longer life cycles fall closer
to the regression line, suggesting their next host predators are a more
typical size, given their current host.

![](transmission_pp_impute_files/figure-gfm/unnamed-chunk-16-1.png)<!-- -->

Let’s look explicitly at the residual values. For parasitized trophic
links, we calculated the difference between observed and expected
predator mass (i.e. the residuals).

Now we fit taxonomic mixed models to this data, analogous to those on
the other host traits like mass. First we add “step in the life cycle”,
i.e. first host, second host, etc., adding either as a continuous or
categorical variable. Then we added life cycle length to the model.
Finally, we consider parasite stage, i.e. the combination of host number
and life cycle length.

Here is the number of stages and species in the model.

<div class="kable-table">

| n\_stages | n\_spp |
| --------: | -----: |
|      1961 |    967 |

</div>

    ## [1] "iteration 1 finished"
    ## [1] "iteration 2 finished"
    ## [1] "iteration 3 finished"
    ## [1] "iteration 4 finished"
    ## [1] "iteration 5 finished"
    ## [1] "iteration 6 finished"
    ## [1] "iteration 7 finished"
    ## [1] "iteration 8 finished"
    ## [1] "iteration 9 finished"
    ## [1] "iteration 10 finished"
    ## [1] "iteration 11 finished"
    ## [1] "iteration 12 finished"
    ## [1] "iteration 13 finished"
    ## [1] "iteration 14 finished"
    ## [1] "iteration 15 finished"
    ## [1] "iteration 16 finished"
    ## [1] "iteration 17 finished"
    ## [1] "iteration 18 finished"
    ## [1] "iteration 19 finished"
    ## [1] "iteration 20 finished"
    ## [1] "iteration 21 finished"
    ## [1] "iteration 22 finished"
    ## [1] "iteration 23 finished"
    ## [1] "iteration 24 finished"
    ## [1] "iteration 25 finished"
    ## [1] "iteration 26 finished"
    ## [1] "iteration 27 finished"
    ## [1] "iteration 28 finished"
    ## [1] "iteration 29 finished"
    ## [1] "iteration 30 finished"
    ## [1] "iteration 31 finished"
    ## [1] "iteration 32 finished"
    ## [1] "iteration 33 finished"
    ## [1] "iteration 34 finished"
    ## [1] "iteration 35 finished"
    ## [1] "iteration 36 finished"
    ## [1] "iteration 37 finished"
    ## [1] "iteration 38 finished"
    ## [1] "iteration 39 finished"
    ## [1] "iteration 40 finished"
    ## [1] "iteration 41 finished"
    ## [1] "iteration 42 finished"
    ## [1] "iteration 43 finished"
    ## [1] "iteration 44 finished"
    ## [1] "iteration 45 finished"
    ## [1] "iteration 46 finished"
    ## [1] "iteration 47 finished"
    ## [1] "iteration 48 finished"
    ## [1] "iteration 49 finished"
    ## [1] "iteration 50 finished"
    ## [1] "iteration 51 finished"
    ## [1] "iteration 52 finished"
    ## [1] "iteration 53 finished"
    ## [1] "iteration 54 finished"
    ## [1] "iteration 55 finished"
    ## [1] "iteration 56 finished"
    ## [1] "iteration 57 finished"
    ## [1] "iteration 58 finished"
    ## [1] "iteration 59 finished"
    ## [1] "iteration 60 finished"
    ## [1] "iteration 61 finished"
    ## [1] "iteration 62 finished"
    ## [1] "iteration 63 finished"
    ## [1] "iteration 64 finished"
    ## [1] "iteration 65 finished"
    ## [1] "iteration 66 finished"
    ## [1] "iteration 67 finished"
    ## [1] "iteration 68 finished"
    ## [1] "iteration 69 finished"
    ## [1] "iteration 70 finished"
    ## [1] "iteration 71 finished"
    ## [1] "iteration 72 finished"
    ## [1] "iteration 73 finished"
    ## [1] "iteration 74 finished"
    ## [1] "iteration 75 finished"
    ## [1] "iteration 76 finished"
    ## [1] "iteration 77 finished"
    ## [1] "iteration 78 finished"
    ## [1] "iteration 79 finished"
    ## [1] "iteration 80 finished"
    ## [1] "iteration 81 finished"
    ## [1] "iteration 82 finished"
    ## [1] "iteration 83 finished"
    ## [1] "iteration 84 finished"
    ## [1] "iteration 85 finished"
    ## [1] "iteration 86 finished"
    ## [1] "iteration 87 finished"
    ## [1] "iteration 88 finished"
    ## [1] "iteration 89 finished"
    ## [1] "iteration 90 finished"
    ## [1] "iteration 91 finished"
    ## [1] "iteration 92 finished"
    ## [1] "iteration 93 finished"
    ## [1] "iteration 94 finished"
    ## [1] "iteration 95 finished"
    ## [1] "iteration 96 finished"
    ## [1] "iteration 97 finished"
    ## [1] "iteration 98 finished"
    ## [1] "iteration 99 finished"
    ## [1] "iteration 100 finished"

We’ll start by comparing model fits. Here is the trace for deviance
(like the model likelihood). Adding host number as a continuous (red) or
factor (green) is not an improvement over the intercept-only model
(black). Adding life cycle length (blue) is a clearer improvement, but
the interaction between life cycle length and host number is not that
important.

![](transmission_pp_impute_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

Here are the DIC values for the models.

    ## DIC, int-only: 11566.18

    ## DIC, host number (cont); 11566.38

    ## DIC, host number (cat); 11555.95

    ## DIC, life cycle length (cat); 11330.34

    ## DIC, host number x life cycle length interaction; 11328.16

The comparison of DIC values suggests the host number addition is not a
big improvement.

    ## Delta DIC, int-only vs host number (categorical): 10.23834 (higher is better)

The addition of life cycle length as a categorical variable is an
improvement.

    ## Delta DIC, host number (categorical) vs +life cycle length (categorical): 225.6015 (higher is better)

The addition of the host number by life cycle length interaction is only
a slight improvement.

    ## Delta DIC, main effects vs +host number x life cycle length interaction: 2.181915 (higher is better)

The next plot demonstrates the main effects. Mass ratios get smaller
with life cycle length, but not with stage in the life cycle.

![](transmission_pp_impute_files/figure-gfm/unnamed-chunk-31-1.png)<!-- -->

Now we can combine the chains for the fixed parameters and variance
componenets.

First, we can look at the overall average (intercept from int-only
model). It suggests parasites infect next host predators that are large
relative to the size of the current host prey.

<div class="kable-table">

| param       |      lwr |      fit |      upr | sig | fold\_diff\_from\_exp | fold\_diff\_lwr | fold\_diff\_upr |
| :---------- | -------: | -------: | -------: | :-- | --------------------: | --------------: | --------------: |
| (Intercept) | 1.617368 | 5.814751 | 9.628556 | sig |               335.208 |        5.039806 |        15192.48 |

</div>

Here are the model parameters and credible intervals for the host number
(cont) model…

<div class="kable-table">

| param       |         lwr |       fit |       upr | sig |
| :---------- | ----------: | --------: | --------: | :-- |
| (Intercept) |   1.1708198 | 5.5580771 | 9.7543694 | sig |
| Host.no     | \-0.2738379 | 0.0886617 | 0.4166378 | ns  |

</div>

…the model treating host number as a category…

<div class="kable-table">

| param          |         lwr |         fit |       upr | sig |
| :------------- | ----------: | ----------: | --------: | :-- |
| (Intercept)    |   2.0954396 |   5.5436295 | 8.9644226 | sig |
| Host\_no\_fac2 |   0.1905552 |   0.6847410 | 1.1765795 | sig |
| Host\_no\_fac3 | \-0.9919882 | \-0.2237622 | 0.5449065 | ns  |
| Host\_no\_fac4 | \-2.3092395 | \-0.5875729 | 1.1957752 | ns  |

</div>

…the model adding life cycle length…

<div class="kable-table">

| param           |          lwr |         fit |         upr | sig |
| :-------------- | -----------: | ----------: | ----------: | :-- |
| (Intercept)     |   14.1832346 |   15.416916 |   16.578826 | sig |
| Host\_no\_fac2  |    0.5654304 |    1.051906 |    1.560925 | sig |
| Host\_no\_fac3  |    0.7991768 |    1.657623 |    2.478469 | sig |
| Host\_no\_fac4  |  \-0.2803782 |    1.499563 |    3.151078 | ns  |
| lcl\_max\_fac2  | \-11.1468751 |  \-9.996059 |  \-8.851662 | sig |
| lcl\_max\_fac3  | \-14.4670498 | \-13.123312 | \-11.895502 | sig |
| lcl\_max\_fac3+ | \-16.1459776 | \-14.532379 | \-12.918582 | sig |

</div>

…and the most complex model with all stages.

<div class="kable-table">

| param             |        lwr |         fit |         upr | sig |
| :---------------- | ---------: | ----------: | ----------: | :-- |
| (Intercept)       |   14.15986 |   15.406651 |   16.547290 | sig |
| stage\_lcllc2\_1  | \-11.14154 |  \-9.894839 |  \-8.660467 | sig |
| stage\_lcllc2\_2  | \-10.26044 |  \-9.060352 |  \-7.920252 | sig |
| stage\_lcllc3\_1  | \-14.80601 | \-13.529008 | \-12.102382 | sig |
| stage\_lcllc3\_2  | \-13.20338 | \-11.870450 | \-10.488547 | sig |
| stage\_lcllc3\_3  | \-12.66484 | \-11.306621 |  \-9.942709 | sig |
| stage\_lcllc3+\_1 | \-17.84285 | \-15.391058 | \-13.256307 | sig |
| stage\_lcllc3+\_2 | \-14.20579 | \-12.185400 | \-10.216537 | sig |
| stage\_lcllc3+\_3 | \-15.62241 | \-13.610616 | \-11.702088 | sig |
| stage\_lcllc3+\_4 | \-15.09110 | \-13.064530 | \-11.037361 | sig |

</div>

Here is a comparison of where life cycles start, i.e. how much first
host mass differs from expected…

<div class="kable-table">

| lcl | diff\_from\_expected | fold\_change |
| --: | -------------------: | -----------: |
|   1 |           15.4066511 |    4909345.2 |
|   2 |            5.5118117 |        247.6 |
|   3 |            1.8776431 |          6.5 |
|   4 |            0.0155934 |          1.0 |

</div>

And here is a comparison of how final host mass differs from expected,
given the previous host mass:

<div class="kable-table">

| lcl | diff\_from\_expected | fold\_change |
| --: | -------------------: | -----------: |
|   1 |            15.406651 |    4909345.2 |
|   2 |             6.346299 |        570.4 |
|   3 |             4.100030 |         60.3 |
|   4 |             2.342122 |         10.4 |

</div>

Since life cycle length was the main term that impacted next host mass,
we also fit a model with just life cycle length.

<div class="kable-table">

| param           |        lwr |       fit |       upr | sig | fold\_change | fold\_change\_lwr | fold\_change\_upr |
| :-------------- | ---------: | --------: | --------: | :-- | -----------: | ----------------: | ----------------: |
| lcl\_max\_fac1  | 14.1186858 | 15.440174 | 16.496961 | sig |      5076713 |           1354152 |          14606264 |
| lcl\_max\_fac2  |  5.3048530 |  5.937150 |  6.535126 | sig |          379 |               201 |               689 |
| lcl\_max\_fac3  |  2.4961653 |  3.224816 |  3.840367 | sig |           25 |                12 |                47 |
| lcl\_max\_fac3+ |  0.8573538 |  2.023711 |  3.184724 | sig |            8 |                 2 |                24 |

</div>

Here’s the R<sup>2</sup> table for the models. Life cycle step explains
almost no variation, while life cycle length accounts \~30% of the
variation in next host mass. Taxonomy still has an effect too - related
parasites infect bigger or smaller hosts than expected given their life
cycle.

<div class="kable-table">

| model                 | r2m                   | r2c                   |
| :-------------------- | :-------------------- | :-------------------- |
| int-only and taxonomy | 0 \[0-0\]             | 0.428 \[0.325-0.83\]  |
| steps in cycle, cont  | 0 \[0-0.003\]         | 0.434 \[0.321-0.847\] |
| steps, categorical    | 0.004 \[0.001-0.012\] | 0.444 \[0.332-0.811\] |
| life cycle length     | 0.291 \[0.248-0.331\] | 0.353 \[0.313-0.404\] |
| step x lcl            | 0.294 \[0.246-0.332\] | 0.357 \[0.314-0.405\] |

</div>

Let’s look at how the taxonomic effect breaks down. Once we account for
stage effects, we see that parasite families tend to infect next hosts
that are consistently bigger (or smaller) than expected from their
current hosts.

![](transmission_pp_impute_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

But our main interest is in life stages, so let’s put the model
predictions onto the boxplot of the observed data.

The plot shows how the average divergence from expectations shrinks with
life cycle length. Longer life cycle parasites are transmitted along
more “average” trophic links than those with shorter cycles.

![](transmission_pp_impute_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->
