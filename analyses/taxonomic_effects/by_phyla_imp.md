Taxonomic effects
================

  - [Host traits](#host-traits)
      - [Host mass](#host-mass)
          - [First host size decreases with life cycle
            length?](#first-host-size-decreases-with-life-cycle-length)
          - [Final host size increases with life cycle
            length?](#final-host-size-increases-with-life-cycle-length)
      - [Host trophic level](#host-trophic-level)
          - [First host tl decreases with life cycle
            length?](#first-host-tl-decreases-with-life-cycle-length)
          - [Final host TL increases with life cycle
            length?](#final-host-tl-increases-with-life-cycle-length)
      - [Endothermy](#endothermy)
      - [Host mass ratios](#host-mass-ratios)
  - [Parasite traits, stage level](#parasite-traits-stage-level)
      - [Final size](#final-size)
      - [Initial size](#initial-size)
      - [Growth](#growth)
      - [Development time](#development-time)
      - [Growth rate](#growth-rate)
  - [Growth slows with size and age?](#growth-slows-with-size-and-age)
  - [Parasite traits, species level](#parasite-traits-species-level)
      - [Propagule size](#propagule-size)
      - [Adult size](#adult-size)
      - [Age at maturity](#age-at-maturity)
      - [Lifetime growth rate](#lifetime-growth-rate)

Our analysis includes three distinct groups of parasites: acanths,
cestodes, and nematodes. In this notebook, we look at whether the main
results from the manuscript differ among these groups. Our strategy is
to add parasite group to the mixed models used in the main analysis.
Moreover, we allow it to interact with the predictor variables.

# Host traits

We begin by examining host traits.

## Host mass

Starting with host mass, we take parasite phylum out of the random
effecs and add a parasite phylum x stage interaction to the model fixed
effects.

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

This is a better model, suggesting that phyla infect hosts of different
masses at a given stage.

    ## Delta DIC, int-only vs host number (categorical): 70.62203 (higher is better)

However, when we look at r<sup>2</sup>, we see that the phylum x stage
interaction did not increase the total variance explained very much.

<div class="kable-table">

| model          | r2m                   | r2c                   |
| :------------- | :-------------------- | :-------------------- |
| stage          | 0.667 \[0.531-0.703\] | 0.819 \[0.801-0.852\] |
| stage x phylum | 0.684 \[0.624-0.717\] | 0.829 \[0.811-0.853\] |

</div>

Let’s check each of the main ‘mass’ results for each worm group.

### First host size decreases with life cycle length?

Here are the predicted first host sizes with different life cycle
lengths. First host size does not decrease in acanths.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_bm.lwr | host\_bm.fit | host\_bm.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1973.1 | Acanthocephala   |       1 | 2             |   \-3.094006 |   \-2.272655 |   \-1.501392 |
| 1981.1 | Acanthocephala   |       1 | 3             |   \-3.506961 |   \-2.509086 |   \-1.667362 |

</div>

It does decrease in cestodes.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_bm.lwr | host\_bm.fit | host\_bm.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1969.1 | Platyhelminthes  |       1 | 2             |   \-2.548697 |   \-1.858583 |  \-0.9887531 |
| 1971.1 | Platyhelminthes  |       1 | 3             |   \-4.575501 |   \-3.761657 |  \-2.8535461 |
| 1987.1 | Platyhelminthes  |       1 | 3+            |   \-5.793865 |   \-4.444514 |  \-3.0022895 |

</div>

And it decreases in nematodes too.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_bm.lwr | host\_bm.fit | host\_bm.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1975.1 | Nematoda         |       1 | 1             |     1.808878 |     2.568496 |    3.3211294 |
| 1964.1 | Nematoda         |       1 | 2             |   \-1.816828 |   \-1.134429 |  \-0.4239486 |
| 1966.1 | Nematoda         |       1 | 3             |   \-3.076171 |   \-2.251117 |  \-1.5799945 |
| 1980.1 | Nematoda         |       1 | 3+            |   \-4.469932 |   \-3.465462 |  \-2.4934443 |

</div>

### Final host size increases with life cycle length?

Here are the predicted final host sizes with different life cycle
lengths. Acanths with longer cycles infect bigger definitive hosts.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_bm.lwr | host\_bm.fit | host\_bm.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1974.1 | Acanthocephala   |       2 | 2             |     1.511110 |     2.365076 |     3.137036 |
| 1982.1 | Acanthocephala   |       3 | 3             |     2.398297 |     3.332689 |     4.173593 |

</div>

Same for cestodes, but the trend is weak.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_bm.lwr | host\_bm.fit | host\_bm.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1970.1 | Platyhelminthes  |       2 | 2             |     2.189222 |     2.907740 |     3.734529 |
| 1972.1 | Platyhelminthes  |       3 | 3             |     2.921897 |     3.663062 |     4.618285 |
| 1986.1 | Platyhelminthes  |       4 | 3+            |     2.870659 |     4.073484 |     5.359898 |

</div>

The trend in nematodes is also weak.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_bm.lwr | host\_bm.fit | host\_bm.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1975.1 | Nematoda         |       1 | 1             |     1.808878 |     2.568496 |     3.321129 |
| 1965.1 | Nematoda         |       2 | 2             |     2.097619 |     2.806212 |     3.513317 |
| 1968.1 | Nematoda         |       3 | 3             |     2.557558 |     3.399242 |     4.050217 |
| 1979.1 | Nematoda         |       4 | 3+            |     3.330717 |     4.249596 |     5.163051 |

</div>

Now let’s plot the differences among worm groups. Here is host mass
facetted by life cycle length and helminth group. Comparisons across
helminth groups are tough in this figure.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-15-1.png)<!-- --> It is
easier to compare groups if we put them side-by-side. This is analogous
to fig 1a, but with groups separated by taxon.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-17-1.png)<!-- -->

## Host trophic level

The next host trait we looked at is trophic level. We take the same
approach. We added a stage by phylum interaction to the model’s fixed
effects and took out the phylum random effect.

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

This is a better model, suggesting that phyla infect hosts of different
masses at a given stage.

    ## Delta DIC, int-only vs host number (categorical): 29.56186 (higher is better)

However, the overall variance explained did not increase much.

<div class="kable-table">

| model          | r2m                  | r2c                   |
| :------------- | :------------------- | :-------------------- |
| stage          | 0.27 \[0.105-0.325\] | 0.605 \[0.545-0.843\] |
| stage x phylum | 0.339 \[0.26-0.426\] | 0.619 \[0.568-0.749\] |

</div>

Let’s compare the main results for each group.

### First host tl decreases with life cycle length?

Does the first host TL vary with life cycle length? It does not in
acanths.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_tl.lwr | host\_tl.fit | host\_tl.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1973.1 | Acanthocephala   |       1 | 2             |     1.874796 |     2.134356 |     2.382704 |
| 1981.1 | Acanthocephala   |       1 | 3             |     1.914284 |     2.205429 |     2.498822 |

</div>

Nor in cestodes.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_tl.lwr | host\_tl.fit | host\_tl.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1969.1 | Platyhelminthes  |       1 | 2             |     2.444865 |     2.688716 |     3.004714 |
| 1971.1 | Platyhelminthes  |       1 | 3             |     2.420707 |     2.676995 |     3.036347 |
| 1987.1 | Platyhelminthes  |       1 | 3+            |     2.117715 |     2.607657 |     3.060267 |

</div>

Nor in nematodes.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_tl.lwr | host\_tl.fit | host\_tl.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1975.1 | Nematoda         |       1 | 1             |     2.193149 |     2.389512 |     2.648858 |
| 1964.1 | Nematoda         |       1 | 2             |     2.169646 |     2.418959 |     2.619661 |
| 1966.1 | Nematoda         |       1 | 3             |     2.079516 |     2.321279 |     2.552970 |
| 1980.1 | Nematoda         |       1 | 3+            |     2.110241 |     2.420474 |     2.740092 |

</div>

Thus, each group starts their life cycle at about the same host TL.

### Final host TL increases with life cycle length?

Does final host TL increase with life cycle length (i.e. the trophic
vacuum relationship). Yes for acanths.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_tl.lwr | host\_tl.fit | host\_tl.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1974.1 | Acanthocephala   |       2 | 2             |     2.683014 |     2.932800 |     3.184330 |
| 1982.1 | Acanthocephala   |       3 | 3             |     3.037721 |     3.314694 |     3.611711 |

</div>

Not much for cestodes.

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_tl.lwr | host\_tl.fit | host\_tl.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1970.1 | Platyhelminthes  |       2 | 2             |     2.938492 |     3.192371 |     3.488206 |
| 1972.1 | Platyhelminthes  |       3 | 3             |     3.208581 |     3.460285 |     3.761985 |
| 1986.1 | Platyhelminthes  |       4 | 3+            |     2.951269 |     3.356059 |     3.751117 |

</div>

Yes for nematodes

<div class="kable-table">

|        | parasite\_phylum | Host.no | lcl\_max\_fac | host\_tl.lwr | host\_tl.fit | host\_tl.upr |
| :----- | :--------------- | ------: | :------------ | -----------: | -----------: | -----------: |
| 1975.1 | Nematoda         |       1 | 1             |     2.193149 |     2.389512 |     2.648858 |
| 1965.1 | Nematoda         |       2 | 2             |     2.716275 |     2.937028 |     3.157300 |
| 1968.1 | Nematoda         |       3 | 3             |     2.941840 |     3.189169 |     3.410409 |
| 1979.1 | Nematoda         |       4 | 3+            |     2.887905 |     3.183450 |     3.475315 |

</div>

This relationship between final host TL and life cycle length was looked
at more explicitly in this
[notebook](../transmission_pp_ratio/trophic_vacuum_noimp.Rmd).

Now we plot the trends. Here is trophic level facetted by life cycle
length and helminth group.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

Here is the same plot as in Figure 1b, but separated by helminth group.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-31-1.png)<!-- -->

## Endothermy

Endothermy was hard to model, because at a given stage, taxonomic groups
infected either endotherms or ectotherms, i.e. complete separation. This
results in unrealistic parameter estimates with wide CIs. We can,
though, still compare the variance explained by a model with and without
parasite group.

Adding parasite group alone does not improve the model, but adding a
group x life stage interaction is an improvement.

<div class="kable-table">

|      | npar |      AIC |      BIC |     logLik | deviance |     Chisq | Df | Pr(\>Chisq) |
| :--- | ---: | -------: | -------: | ---------: | -------: | --------: | -: | ----------: |
| mod0 |    5 | 1708.811 | 1736.722 | \-849.4055 | 1698.811 |        NA | NA |          NA |
| mod1 |    6 | 1709.150 | 1742.643 | \-848.5750 | 1697.150 |  1.660987 |  1 |   0.1974701 |
| mod2 |   10 | 1671.110 | 1726.932 | \-825.5548 | 1651.110 | 46.040251 |  4 |   0.0000000 |

</div>

Here is the r<sup>2</sup> for the model with phylum as a random effect.

    ##                   R2m       R2c
    ## theoretical 0.4503371 0.6720335
    ## delta       0.3988068 0.5951353

And here is the r<sup>2</sup> for the model with a stage x phylum
interaction. It accounts for some variation.

    ##                   R2m       R2c
    ## theoretical 0.4863005 0.7792300
    ## delta       0.4473912 0.7168832

So, let’s plot endothermy separate for the 3 parasite groups. In all
cases, endothermy increased rather abruptly at the definitive host
stage, though magnitudes vary.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-41-1.png)<!-- -->
Endothermy results are basically the same between imputed and unimputed
data, because there was nothing missing here.

## Host mass ratios

Another host trait we considered was the change in host mass from one
host to the next. We compared host mass ratios to predator-prey mass
ratios. We take the same model fitting approach.

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

The model DIC was a little higher after allowing a stage x phylum
interaction.

    ## Delta DIC, int-only vs host number (categorical): 51.72664 (higher is better)

But this variable only explained a few percentage points more of the
total variance.

<div class="kable-table">

| model          | r2m                   | r2c                   |
| :------------- | :-------------------- | :-------------------- |
| stage          | 0.292 \[0.251-0.331\] | 0.357 \[0.316-0.411\] |
| stage x phylum | 0.324 \[0.283-0.366\] | 0.391 \[0.353-0.446\] |

</div>

Now we recreate figure 2 in the ms, but for each group separately.

Here is figure 2a. It looks relatively comparable, though there are some
differences among groups.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-51-1.png)<!-- --> Here
is figure 2b, separated by phyla. However, comparisons among phyla are
difficult.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-52-1.png)<!-- -->
Therefore, we put them on the same plot.

The size differences between hosts tend to decrease in longer life
cycles in each group.
![](by_phyla_imp_files/figure-gfm/unnamed-chunk-54-1.png)<!-- --> It is
a little hard to see this, though, because there can be considerable
variation from one stage to the next. Therefore, we also fit a model
with just life cycle length and phylum (not host number). Here are the
estimated means for each taxon. Next host mass, relative to current host
mass, decreases with life cycle length in every group.

<div class="kable-table">

|        | parasite\_phylum | lcl\_max\_fac | res\_ma.lwr | res\_ma.fit | res\_ma.upr |
| :----- | :--------------- | :------------ | ----------: | ----------: | ----------: |
| 1971.1 | Acanthocephala   | 2             |   4.2411772 |    5.373284 |    6.438957 |
| 1979.1 | Acanthocephala   | 3             |   2.1045107 |    3.497846 |    4.808329 |
| 1973.1 | Nematoda         | 1             |  14.2174277 |   15.523847 |   16.690808 |
| 1962.1 | Nematoda         | 2             |   5.1247602 |    6.024476 |    6.846744 |
| 1964.1 | Nematoda         | 3             |   2.7723668 |    3.746808 |    4.746456 |
| 1975.1 | Nematoda         | 3+            |   0.5783131 |    1.991741 |    3.389407 |
| 1967.1 | Platyhelminthes  | 2             |   5.2519620 |    6.111499 |    7.295494 |
| 1969.1 | Platyhelminthes  | 3             |   1.5747108 |    2.586215 |    3.692945 |
| 1982.1 | Platyhelminthes  | 3+            |   0.2515473 |    2.389159 |    4.372827 |

</div>

We combine the results from the different host traits into a single
figure.

# Parasite traits, stage level

We now move onto to parasite traits. We examined parasite growth and
development at the stage level. We explored growth with a trivariate
model that incorporated the components of growth: initial size, final
size, and developmental time.

We examined which host traits (body mass, trophic level, and endothermy)
impact parasite growth. Now we check whether the effects dependent on
taxonomic group. To test this, we take parasite phylum out of the random
effects and add it as a fixed effect. We fit two versions of the model.
Either we allowed all second-order interactions or we allowed parasite
phylum to interact with all existing terms (i.e. second and third-order
interactions).

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

Adding parasite phylum and its second-order interactions was an
improvement.

    ## Delta DIC, host traits vs host traits x phylum: 541.1728 (higher is better)

Adding further complex 3-way interactions was also an improvement, but a
smaller one.

    ## Delta DIC, host traits x phylum (2nd order) vs host traits x phylum (3rd order): 112.63 (higher is better)

To understand why the models improved, we examine each of the three
traits in turn.

## Final size

How much does r<sup>2</sup> go up by letting parasite phylum interact
with host traits? For worm final size, moving parasite phylum to the
fixed effects increased marginal R2 but not conditional R2. Thus, the
total variance explained is not increased much by allowing different
host mass, host tl, and endothermy relationships for each parasite
group.

<div class="kable-table">

| model                                    | r2m                   | r2c                   |
| :--------------------------------------- | :-------------------- | :-------------------- |
| host traits, 2nd-order interactions      | 0.579 \[0.4-0.635\]   | 0.801 \[0.775-0.862\] |
| host traits x parasite phylum            | 0.667 \[0.596-0.719\] | 0.806 \[0.779-0.844\] |
| host traits x parasite phylum, all 2-way | 0.666 \[0.588-0.72\]  | 0.808 \[0.781-0.846\] |
| host traits x parasite phylum, all 3-way | 0.667 \[0.585-0.718\] | 0.811 \[0.784-0.843\] |

</div>

We can fit the same models with `lmer` to double check. Moving parasite
phylum to the fixed effects looks like an improvement, but allowing it
to have more complex three-way interaction is not much of an
improvement.

<div class="kable-table">

|      | npar |      AIC |      BIC |     logLik | deviance |     Chisq | Df | Pr(\>Chisq) |
| :--- | ---: | -------: | -------: | ---------: | -------: | --------: | -: | ----------: |
| l1   |   14 | 8854.648 | 8932.799 | \-4413.324 | 8826.648 |        NA | NA |          NA |
| l2   |   21 | 8744.343 | 8861.570 | \-4351.172 | 8702.343 | 124.30464 |  7 |   0.0000000 |
| l2.1 |   28 | 8735.958 | 8892.261 | \-4339.979 | 8679.958 |  22.38495 |  7 |   0.0021798 |

</div>

One of the clearest host trait effects was for worms to get bigger in
bigger hosts. Is this trend observed in all groups? Here is the %
increase in final worm size with a doubling of host mass in
acanthocephalans…

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##       0.255766       0.040599       0.001284       0.001706 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##   2.5%    25%    50%    75%  97.5% 
    ## 0.1741 0.2293 0.2565 0.2823 0.3320

… in cestodes, …

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##      0.3801718      0.0171266      0.0005416      0.0007684 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##   2.5%    25%    50%    75%  97.5% 
    ## 0.3474 0.3686 0.3798 0.3916 0.4144

…and in nematodes.

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##      0.3263555      0.0175642      0.0005554      0.0009651 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##   2.5%    25%    50%    75%  97.5% 
    ## 0.2939 0.3142 0.3258 0.3373 0.3636

The trend is significant for all groups, though it is a bit steeper for
cestodes than acanths and nematodes.

Here are the model predictions plotted. These are equivalent to figure
3a and b, but separated by helminth group. The relationship between host
mass and end worm size is rather consistent across groups.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

The relationship between trophic level and end worm size is more
variable across groups, though it tends to be weak overall.
![](by_phyla_imp_files/figure-gfm/unnamed-chunk-79-1.png)<!-- -->

In the main manuscript, we also tested whether adding stage to the host
traits model was an improvement. So, we added stage to the host traits x
phylum model. Adding stage alone is a clear improvement.

    ## Delta DIC, host traits x phylum vs +stage: 1986.846 (higher is better)

But adding a phylum by stage interaction is not nearly as important.

    ## Delta DIC, host traits x phylum vs +stage: 327.6499 (higher is better)

Stage explains about another 5% of the variation in final worm size, but
the stage effect did not seem to depend on parasite group, since this
did not explain any additional variation. So, the stages where worms are
larger (or smaller) than expected tend to be consistent across groups.

<div class="kable-table">

| model                                    | r2m                   | r2c                   |
| :--------------------------------------- | :-------------------- | :-------------------- |
| host traits x parasite phylum, all 3-way | 0.667 \[0.585-0.718\] | 0.811 \[0.784-0.843\] |
| add life stage                           | 0.688 \[0.604-0.742\] | 0.864 \[0.844-0.89\]  |
| add life stage x phylum interaction      | 0.704 \[0.633-0.746\] | 0.865 \[0.847-0.889\] |

</div>

We can confirm this by plotting the residuals from the model that
accounts for host traits and their variable relationship within phyla.
Some stages should have consistently high (or low) residuals if they
grow more or less than expected given the stage/phyla. This is similar
to Fig. 4a in main text, except the residuals are plotted instead of the
real values. In all groups, size in second intermediate hosts was lower
than expected.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-85-1.png)<!-- -->

## Initial size

The next parasite trait was initial size. Unlike for final size, adding
phylum x host trait interactions explained some additional variation in
initial size.

<div class="kable-table">

| model                                    | r2m                   | r2c                   |
| :--------------------------------------- | :-------------------- | :-------------------- |
| host traits, 2nd-order interactions      | 0.43 \[0.357-0.477\]  | 0.629 \[0.585-0.7\]   |
| host traits x parasite phylum            | 0.514 \[0.442-0.574\] | 0.666 \[0.618-0.721\] |
| host traits x parasite phylum, all 2-way | 0.513 \[0.439-0.573\] | 0.669 \[0.624-0.726\] |
| host traits x parasite phylum, all 3-way | 0.523 \[0.447-0.581\] | 0.688 \[0.645-0.739\] |

</div>

We can fit the same models with `lmer` to double check. Moving parasite
phylum to the fixed effects looks like an improvement, as does allowing
it to have more complex three-way interaction.

<div class="kable-table">

|      | npar |      AIC |      BIC |     logLik | deviance |     Chisq | Df | Pr(\>Chisq) |
| :--- | ---: | -------: | -------: | ---------: | -------: | --------: | -: | ----------: |
| l1   |   14 | 9528.854 | 9607.005 | \-4750.427 | 9500.854 |        NA | NA |          NA |
| l2   |   21 | 9428.403 | 9545.629 | \-4693.201 | 9386.403 | 114.45098 |  7 |           0 |
| l2.1 |   28 | 9343.585 | 9499.887 | \-4643.792 | 9287.585 |  98.81782 |  7 |           0 |

</div>

One overall trend was for worms to enter bigger hosts as bigger larvae.
Is that consistent across groups? Here is the % increase in initial worm
size with a doubling of host mass in acanthocephalans…

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##       0.434318       0.056928       0.001800       0.002738 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##   2.5%    25%    50%    75%  97.5% 
    ## 0.3252 0.3963 0.4336 0.4729 0.5461

… in cestodes, …

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##      0.1907326      0.0197047      0.0006231      0.0011834 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##   2.5%    25%    50%    75%  97.5% 
    ## 0.1536 0.1779 0.1900 0.2037 0.2306

…and in nematodes.

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##      0.1269102      0.0166400      0.0005262      0.0007277 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##    2.5%     25%     50%     75%   97.5% 
    ## 0.09532 0.11611 0.12631 0.13815 0.16008

The relationship is steeper in acanthocephalans than in the other two
groups.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-91-1.png)<!-- --> There
was also a tendency for initial size to increase with host trophic level
in all groups.
![](by_phyla_imp_files/figure-gfm/unnamed-chunk-92-1.png)<!-- -->

What about adding stage? It is a big improvement. Adding a stage x
phylum interaction is not as important, but it is non-negligble. So, it
seems like some stages start larger (or smaller) than expected just in
certain helminths.

<div class="kable-table">

| model                                    | r2m                   | r2c                   |
| :--------------------------------------- | :-------------------- | :-------------------- |
| host traits x parasite phylum, all 3-way | 0.523 \[0.447-0.581\] | 0.688 \[0.645-0.739\] |
| add life stage                           | 0.631 \[0.567-0.67\]  | 0.806 \[0.783-0.836\] |
| add life stage x phylum interaction      | 0.657 \[0.599-0.694\] | 0.825 \[0.805-0.85\]  |

</div>

Here are the residuals for starting size, after correcting for host
trait x phyla effects. Cestodes are have particularly small propagules
in two- and four-host cycles. In general, though, the phylum x stage
interaction does not look very pronounced.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-95-1.png)<!-- -->

## Growth

Instead of plotting final and initial size separately, we could plot
relative growth, i.e. the difference between final and initial size. It
increases with host mass for nematodes and cestodes, but not for
acanthocephalans. In all groups, relative growth is a bit larger in
endotherms than comparable ectotherms.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-96-1.png)<!-- -->

In all groups, growth tends to decrease with trophic level, suggesting
less growth is conducted in later hosts after more transmission events.
This is mainly because worms enter top predators as larger larvae.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-97-1.png)<!-- --> Here
is growth in the median sized ectothermic host for each worm group
(median host mass and trophic level). It tended to be higher in cestodes
than nematodes and acanths, but the differences are not clear, given
that the CIs overlapped.

<div class="kable-table">

| parasite\_phylum | host\_bm | host\_tl |       rg |  rg\_upr |  rg\_lwr | fold\_change | fold\_change\_lwr | fold\_change\_upr | host\_bm\_g |
| :--------------- | -------: | -------: | -------: | -------: | -------: | -----------: | ----------------: | ----------------: | ----------: |
| Acanthocephala   | 3.915838 |      2.7 | 5.290893 | 7.794485 | 3.022947 |     198.5207 |          20.55177 |          2427.180 |    50.19112 |
| Platyhelminthes  | 4.033171 |      2.7 | 7.602520 | 9.770476 | 5.175162 |    2003.2387 |         176.82534 |         17509.103 |    56.43960 |
| Nematoda         | 4.114636 |      2.7 | 5.611803 | 7.683592 | 3.568153 |     273.6372 |          35.45104 |          2172.409 |    61.22993 |

</div>

Here is growth in a 1 mg ectotherm host. Largest in acanths and lowest
in nematodes, though CIs are wide.

<div class="kable-table">

| parasite\_phylum |   host\_bm | host\_tl |       rg |   rg\_upr |   rg\_lwr | fold\_change | fold\_change\_lwr | fold\_change\_upr | host\_bm\_mg |
| :--------------- | ---------: | -------: | -------: | --------: | --------: | -----------: | ----------------: | ----------------: | -----------: |
| Acanthocephala   | \-7.020764 |      2.7 | 7.342983 | 10.051057 | 5.0069769 |   1545.31462 |        149.452251 |        23180.2813 |    0.8931433 |
| Platyhelminthes  | \-6.758445 |      2.7 | 5.662916 |  7.889166 | 3.1871280 |    287.98733 |         24.218771 |         2668.2180 |    1.1610338 |
| Nematoda         | \-6.689061 |      2.7 | 3.131537 |  5.163468 | 0.9069683 |     22.90918 |          2.476802 |          174.7694 |    1.2444511 |

</div>

Compare that to growth in a host three orders of magnitude larger (1 g).
Growth is comparable across groups.

<div class="kable-table">

| parasite\_phylum |    host\_bm | host\_tl |       rg |  rg\_upr |  rg\_lwr | fold\_change | fold\_change\_lwr | fold\_change\_upr | host\_bm\_g |
| :--------------- | ----------: | -------: | -------: | -------: | -------: | -----------: | ----------------: | ----------------: | ----------: |
| Acanthocephala   | \-0.1347551 |      2.7 | 6.023795 | 8.393261 | 3.846591 |     413.1435 |          46.83314 |         4417.1973 |   0.8739299 |
| Platyhelminthes  |   0.2561056 |      2.7 | 6.932457 | 9.116269 | 4.525141 |    1025.0090 |          92.30895 |         9102.1820 |   1.2918892 |
| Nematoda         |   0.1860191 |      2.7 | 4.728577 | 6.696660 | 2.566384 |     113.1344 |          13.01866 |          809.6966 |   1.2044452 |

</div>

Finally compare growth in a host three more orders of magnitude larger
(1 kg). It was highest in cestodes and lowest in acanths.

<div class="kable-table">

| parasite\_phylum | host\_bm | host\_tl |       rg |   rg\_upr |  rg\_lwr | fold\_change | fold\_change\_lwr | fold\_change\_upr | host\_bm\_kg |
| :--------------- | -------: | -------: | -------: | --------: | -------: | -----------: | ----------------: | ----------------: | -----------: |
| Acanthocephala   | 6.751253 |      2.7 | 4.741276 |  7.465469 | 2.290751 |     114.5803 |          9.882351 |          1746.675 |    0.8551298 |
| Platyhelminthes  | 6.731075 |      2.7 | 8.101798 | 10.244459 | 5.649938 |    3300.3960 |        284.273940 |         28126.272 |    0.8380476 |
| Nematoda         | 7.061099 |      2.7 | 6.290380 |  8.352585 | 4.199381 |     539.3583 |         66.645076 |          4241.131 |    1.1657255 |

</div>

We can fit `lmer` models to confirm that growth x host trait
relationships differed among taxa. Adding parasite phyla and its 3-way
interactions both improved the model.

<div class="kable-table">

|      | npar |      AIC |      BIC |     logLik | deviance |     Chisq | Df | Pr(\>Chisq) |
| :--- | ---: | -------: | -------: | ---------: | -------: | --------: | -: | ----------: |
| l1   |   14 | 10452.54 | 10530.69 | \-5212.269 | 10424.54 |        NA | NA |          NA |
| l2   |   21 | 10277.54 | 10394.77 | \-5117.772 | 10235.54 | 188.99444 |  7 |           0 |
| l2.1 |   28 | 10232.12 | 10388.42 | \-5088.059 | 10176.12 |  59.42642 |  7 |           0 |

</div>

Here are the r<sup>2</sup> values for adding phylum to the host traits
model.

    ##            R2m       R2c
    ## [1,] 0.2590665 0.3623841

    ##            R2m       R2c
    ## [1,] 0.3638918 0.4266002

    ##            R2m       R2c
    ## [1,] 0.3727053 0.4360113

What about endothermy? Do worms grow more in endotherms? This is
relative growth in an average-sized host for each group. It is
consistently higher in endotherms, though not quite significantly for
acanths.

<div class="kable-table">

| parasite\_phylum | endo\_ecto | host\_bm | host\_tl |  rg\_lwr |        rg |   rg\_upr | host\_bm\_g |
| :--------------- | :--------- | -------: | -------: | -------: | --------: | --------: | ----------: |
| Acanthocephala   | ecto       | 3.915838 |      2.7 | 3.022947 |  5.290893 |  7.794485 |    50.19112 |
| Acanthocephala   | endo       | 3.847586 |      2.7 | 2.496525 |  5.113510 |  7.884290 |    46.87976 |
| Platyhelminthes  | ecto       | 4.033171 |      2.7 | 5.175162 |  7.602520 |  9.770476 |    56.43960 |
| Platyhelminthes  | endo       | 3.835945 |      2.7 | 7.920452 | 10.523296 | 12.725145 |    46.33718 |
| Nematoda         | ecto       | 4.114636 |      2.7 | 3.568153 |  5.611803 |  7.683592 |    61.22993 |
| Nematoda         | endo       | 3.856846 |      2.7 | 4.837916 |  6.984953 |  9.048651 |    47.31589 |

</div>

When we explicitly add endothermy to a model for relative growth that
already includes other host trait and phyla effects, it is an
improvement. An endothermy by phyla interaction is not important
suggesting the effect of endothermy on relative growth is fairly
constant.

<div class="kable-table">

|     | npar |      AIC |      BIC |     logLik | deviance |    Chisq | Df | Pr(\>Chisq) |
| :-- | ---: | -------: | -------: | ---------: | -------: | -------: | -: | ----------: |
| lx  |   17 | 3771.340 | 3850.569 | \-1868.670 | 3737.340 |       NA | NA |          NA |
| le  |   18 | 3766.595 | 3850.485 | \-1865.297 | 3730.595 | 6.744756 |  1 |   0.0094024 |
| le2 |   20 | 3768.554 | 3861.766 | \-1864.277 | 3728.554 | 2.040699 |  2 |   0.3604690 |

</div>

Endothermy increases the variance in growth explained by host traits
from \~20 to 31%.

    ##            R2m      R2c
    ## [1,] 0.1979209 0.814042

    ##            R2m       R2c
    ## [1,] 0.3192385 0.7078624

## Development time

Moving onto development time, adding parasite group and its interactions
with host traits explains som additional variation, but not much.

<div class="kable-table">

| model                                    | r2m                   | r2c                   |
| :--------------------------------------- | :-------------------- | :-------------------- |
| host traits, 2nd-order interactions      | 0.054 \[0.028-0.083\] | 0.439 \[0.336-0.663\] |
| host traits x parasite phylum            | 0.19 \[0.126-0.383\]  | 0.506 \[0.408-0.724\] |
| host traits x parasite phylum, all 2-way | 0.197 \[0.135-0.335\] | 0.511 \[0.42-0.687\]  |
| host traits x parasite phylum, all 3-way | 0.214 \[0.14-0.374\]  | 0.531 \[0.435-0.683\] |

</div>

We can fit the same models with `lmer` to double check. Moving parasite
phylum to the fixed effects looks like an improvement, but adding the
most complex interactions are not very important.

<div class="kable-table">

|      | npar |      AIC |      BIC |     logLik | deviance |     Chisq | Df | Pr(\>Chisq) |
| :--- | ---: | -------: | -------: | ---------: | -------: | --------: | -: | ----------: |
| l1   |   14 | 4705.388 | 4783.539 | \-2338.694 | 4677.388 |        NA | NA |          NA |
| l2   |   21 | 4403.409 | 4520.635 | \-2180.704 | 4361.409 | 315.97958 |  7 |   0.0000000 |
| l2.1 |   28 | 4389.575 | 4545.878 | \-2166.788 | 4333.575 |  27.83329 |  7 |   0.0002357 |

</div>

The solid and dashed lines represent trends including or excluding short
devo times (\< 1 week). They are quite consistent (different with
imputed data). All groups tended to spend more time developing in larger
ectotherms and less time developing in endotherms.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-109-1.png)<!-- --> Here
is the developmental time in a 1 mg ectotherm. It is a bit shorter in
nematodes and longer in acanths.

<div class="kable-table">

| parasite\_phylum |   host\_bm | host\_tl | days\_dt | days\_dt\_lwr | days\_dt\_upr | host\_bm\_g |
| :--------------- | ---------: | -------: | -------: | ------------: | ------------: | ----------: |
| Acanthocephala   | \-7.020764 |      2.7 | 23.64028 |     11.856388 |      47.07732 |   0.0008931 |
| Platyhelminthes  | \-6.758445 |      2.7 | 20.90840 |      9.466200 |      45.91209 |   0.0011610 |
| Nematoda         | \-6.689061 |      2.7 | 11.86018 |      6.240165 |      22.60541 |   0.0012445 |

</div>

Here are developmental times in a 1 kg ectotherm. It is longer in larger
hosts, but particularly for nematodes and less so for cestodes.

<div class="kable-table">

| parasite\_phylum | host\_bm | host\_tl | days\_dt | days\_dt\_lwr | days\_dt\_upr | host\_bm\_g |
| :--------------- | -------: | -------: | -------: | ------------: | ------------: | ----------: |
| Acanthocephala   | 6.751253 |      2.7 | 35.83241 |     17.048871 |      69.01599 |    855.1298 |
| Platyhelminthes  | 6.731075 |      2.7 | 23.14416 |      9.893807 |      56.28909 |    838.0476 |
| Nematoda         | 7.061099 |      2.7 | 30.71423 |     16.053789 |      60.21996 |   1165.7255 |

</div>

When we plot the relationship with trophic level, the difference between
endo and ectotherms is clearer.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-112-1.png)<!-- -->

Here is the difference in developmental times between endo and
ectotherms (average sized host) for each parasite group. The difference
is relatively consistent (\~20 days).

<div class="kable-table">

| parasite\_phylum | endo\_ecto | host\_bm | host\_tl | days\_dt | days\_dt\_lwr | days\_dt\_upr | host\_bm\_g |
| :--------------- | :--------- | -------: | -------: | -------: | ------------: | ------------: | ----------: |
| Acanthocephala   | ecto       | 3.915838 |      2.7 | 58.50290 |     31.645172 |     111.66911 |    50.19112 |
| Acanthocephala   | endo       | 3.847586 |      2.7 | 37.33637 |     17.000370 |      86.51898 |    46.87976 |
| Platyhelminthes  | ecto       | 4.033171 |      2.7 | 37.61050 |     17.374152 |      96.74278 |    56.43960 |
| Platyhelminthes  | endo       | 3.835945 |      2.7 | 18.06419 |      7.708586 |      44.98826 |    46.33718 |
| Nematoda         | ecto       | 4.114636 |      2.7 | 39.12905 |     19.216960 |      74.75812 |    61.22993 |
| Nematoda         | endo       | 3.856846 |      2.7 | 30.52254 |     15.104279 |      56.62287 |    47.31589 |

</div>

Notably, this difference was larger than in the model without
distinguishing the parasite groups.

<div class="kable-table">

| endo\_ecto | host\_bm | host\_tl | days\_dt | days\_dt\_lwr | days\_dt\_upr | host\_bm\_g |
| :--------- | -------: | -------: | -------: | ------------: | ------------: | ----------: |
| ecto       | 4.033171 |      2.7 | 37.10479 |      16.90105 |      75.93937 |    56.43960 |
| endo       | 3.856846 |      2.7 | 27.77887 |      12.86852 |      57.43577 |    47.31589 |

</div>

What about adding stage? It is an improvement and adding a stage x
phylum interaction is a slight further improvement. So, it seems like
some stages develop longer (or shorter) than expected just in certain
helminths.

<div class="kable-table">

| model                                    | r2m                   | r2c                   |
| :--------------------------------------- | :-------------------- | :-------------------- |
| host traits x parasite phylum, all 3-way | 0.214 \[0.14-0.374\]  | 0.531 \[0.435-0.683\] |
| add life stage                           | 0.336 \[0.251-0.464\] | 0.633 \[0.551-0.795\] |
| add life stage x phylum interaction      | 0.373 \[0.278-0.474\] | 0.655 \[0.581-0.786\] |

</div>

The plot suggests that less development is happening than expected in
cestodes with long life cycles. But overall, there is not a clear trend.
![](by_phyla_imp_files/figure-gfm/unnamed-chunk-117-1.png)<!-- -->

## Growth rate

For relative growth rate, adding parasite phylum to a model with host
traits was an improvement, though complex 3-way interactions do not seem
important.

<div class="kable-table">

|      | npar |        AIC |        BIC |   logLik |   deviance |     Chisq | Df | Pr(\>Chisq) |
| :--- | ---: | ---------: | ---------: | -------: | ---------: | --------: | -: | ----------: |
| l1   |   14 | \-1319.151 | \-1242.512 | 673.5756 | \-1347.151 |        NA | NA |          NA |
| l2   |   21 | \-1761.924 | \-1646.966 | 901.9620 | \-1803.924 | 456.77289 |  7 |       0e+00 |
| l2.1 |   28 | \-1793.160 | \-1639.883 | 924.5801 | \-1849.160 |  45.23619 |  7 |       1e-07 |

</div>

Differences phyla x host trait relationships explain an additional 10%
of the variation. Looking at model parameters (not shown) suggests this
is because tapeworms have accelerated growth.

    ##            R2m       R2c
    ## [1,] 0.1893658 0.4675859

    ##            R2m       R2c
    ## [1,] 0.4582945 0.6697376

    ##            R2m       R2c
    ## [1,] 0.4527169 0.6744587

We can see this in the plot. Growth rate is only plotted for stages that
spent at least 1 week developing. Growth rate decreased with host size
in acanths and nematodes but not cestodes. The rapid growth in cestodes,
though, may be driven by outliers.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-120-1.png)<!-- -->

Here is the relative growth rate in a 1 mg ectotherm (left side of
plot)…

<div class="kable-table">

| parasite\_phylum |   host\_bm | host\_tl |       rgr |    rgr\_lwr |  rgr\_upr | host\_bm\_g |
| :--------------- | ---------: | -------: | --------: | ----------: | --------: | ----------: |
| Acanthocephala   | \-7.020764 |      2.7 | 0.2041310 |   0.0963172 | 0.4039807 |   0.0008931 |
| Platyhelminthes  | \-6.758445 |      2.7 | 0.2006710 | \-0.0374149 | 0.4971915 |   0.0011610 |
| Nematoda         | \-6.689061 |      2.7 | 0.2371608 |   0.0877497 | 0.6055180 |   0.0012445 |

</div>

…and a 1 kg ectotherm (right side of plot). Growth rates decrease for
acanths and nematodes but not cestodes.

<div class="kable-table">

| parasite\_phylum | host\_bm | host\_tl |       rgr |  rgr\_lwr |  rgr\_upr | host\_bm\_g |
| :--------------- | -------: | -------: | --------: | --------: | --------: | ----------: |
| Acanthocephala   | 6.751253 |      2.7 | 0.0887112 | 0.0347658 | 0.1883147 |    855.1298 |
| Platyhelminthes  | 6.731075 |      2.7 | 0.2071938 | 0.0472271 | 0.4910171 |    838.0476 |
| Nematoda         | 7.061099 |      2.7 | 0.1164755 | 0.0542297 | 0.2642379 |   1165.7255 |

</div>

Growth weakly decreased with trophic level, presumably because worms
enter higher trophic level hosts as larger larvae.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-123-1.png)<!-- -->

Here is the difference in relative growth rate between endo and
ectotherms in each group. Growth is consistenly faster in endotherms,
but the differences in each group are not clearly significant.

<div class="kable-table">

| parasite\_phylum | endo\_ecto | host\_bm | host\_tl |  rgr\_lwr |       rgr |  rgr\_upr | host\_bm\_g |
| :--------------- | :--------- | -------: | -------: | --------: | --------: | --------: | ----------: |
| Acanthocephala   | ecto       | 3.915838 |      2.7 | 0.0451084 | 0.1064316 | 0.2039664 |    50.19112 |
| Acanthocephala   | endo       | 3.847586 |      2.7 | 0.0619460 | 0.1601895 | 0.3850621 |    46.87976 |
| Platyhelminthes  | ecto       | 4.033171 |      2.7 | 0.0409536 | 0.2116422 | 0.4963472 |    56.43960 |
| Platyhelminthes  | endo       | 3.835945 |      2.7 | 0.1260677 | 0.5161119 | 1.2476648 |    46.33718 |
| Nematoda         | ecto       | 4.114636 |      2.7 | 0.0648058 | 0.1390331 | 0.3186551 |    61.22993 |
| Nematoda         | endo       | 3.856846 |      2.7 | 0.1239357 | 0.2472285 | 0.5242386 |    47.31589 |

</div>

On the other hand, when we explicitly add endothermy to a model for
relative growth rate than already includes other host trait and phyla
effects, it is an improvement. An endothermy by phyla interaction also
suggests the effect of endothermy differs among groups (it has a bigger
effect on cestodes).

<div class="kable-table">

|     | npar |        AIC |        BIC |   logLik |   deviance |    Chisq | Df | Pr(\>Chisq) |
| :-- | ---: | ---------: | ---------: | -------: | ---------: | -------: | -: | ----------: |
| lx  |   17 | \-1321.508 | \-1228.446 | 677.7538 | \-1355.508 |       NA | NA |          NA |
| le  |   18 | \-1519.470 | \-1420.934 | 777.7349 | \-1555.470 | 199.9622 |  1 |           0 |
| le2 |   20 | \-1754.689 | \-1645.205 | 897.3444 | \-1794.689 | 239.2190 |  2 |           0 |

</div>

Endothermy increases the variance explained by host traits from 14 to
32%. Allowing its effect to vary by parasite group increases this to
43%.

    ##            R2m       R2c
    ## [1,] 0.1424828 0.5880777

    ##            R2m       R2c
    ## [1,] 0.3231303 0.5222155

    ##            R2m       R2c
    ## [1,] 0.4311719 0.6861253

# Growth slows with size and age?

We found that overall growth rate slowed as worms became larger and
older. Was this true in each helminth group? We asymptotic curves only
using species where full devo data are available.

In each group, the curve is a better fit than a line, as the residual
standard errors are much lower than for a line.

<div class="kable-table">

| group           | line\_res\_se | curve\_res\_se |
| :-------------- | ------------: | -------------: |
| Acanthocephala  |      2.461241 |       1.517608 |
| Platyhelminthes |      4.039658 |       3.147844 |
| Nematoda        |      3.839338 |       2.333878 |

</div>

We can also see this by plotting the curves. Overall the curves are
similar among groups, though nematodes might plateau at a smaller size,
and cestodes might grow faster to an asymptote.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-138-1.png)<!-- -->

Here is the same plot, but separated by life cycle length. The curve
fits all groups similarly. Nematodes in their first hosts, though, tend
to grow faster than other groups.
![](by_phyla_imp_files/figure-gfm/unnamed-chunk-140-1.png)<!-- -->

# Parasite traits, species level

Finally, we looked at species level parasite traits, like size and age
at maturity. Before loading those data, we save our models.

Then we load the output from analyses at the species level.

We refit the multivariate model. Now we allow the effect of life cycle
length to vary with helminth group.

Here is the number of species included in the model:

<div class="kable-table">

| parasite\_phylum | n\_dt | n\_end\_size | n\_ini\_size |
| :--------------- | ----: | -----------: | -----------: |
| Acanthocephala   |    86 |           97 |           87 |
| Nematoda         |   452 |          485 |          466 |
| Platyhelminthes  |   319 |          355 |          322 |

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

The models were better when we included the phylum interaction,
suggesting life cycle length effects vary by taxon.

    ## Delta DIC, stage vs stage x phylum: -3.481234 (higher is better)

We look at each trait individually to see which effects vary with
helminth group.

## Propagule size

We were not explicitly interested in propagule size, but we modelled it
because it was used in growth calculations. Life cycle length explained
very little variation in propagule size, but phylum seemed to explain
some variation. Overall variance explained did not increase though.

<div class="kable-table">

| model           | r2m                   | r2c                   |
| :-------------- | :-------------------- | :-------------------- |
| lcl categorical | 0.013 \[0.001-0.046\] | 0.831 \[0.759-0.913\] |
| lcl x phylum    | 0.095 \[0.02-0.324\]  | 0.834 \[0.758-0.91\]  |

</div>

Here is the plot. Differences among groups are small.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-154-1.png)<!-- --> 

## Adult size

what about size at maturity? There is a big effect of phylum - different
groups have different adult sizes - but the overall explained variance
does not increase much. This suggests there are not large differences
among the helminth groups in how adult size changes with life cycle
length.

<div class="kable-table">

| model           | r2m                   | r2c                   |
| :-------------- | :-------------------- | :-------------------- |
| lcl categorical | 0.027 \[0.008-0.058\] | 0.825 \[0.769-0.895\] |
| lcl x phylum    | 0.225 \[0.059-0.443\] | 0.845 \[0.793-0.91\]  |

</div>

Let’s check how adult size increased per additional host in the life
cycle for each group separately. Here is the % increase in final worm
size with an additional host for acanthocephalans (between 2- and 3-host
cycles). It was positive, but not significant.

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##        0.11067        0.49903        0.01578        0.01578 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##      2.5%       25%       50%       75%     97.5% 
    ## -0.577586 -0.255605  0.003193  0.383595  1.302451

In cestodes, the increase in adult size with life cycle length is
significant.

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##        0.87346        0.48506        0.01534        0.01681 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##   2.5%    25%    50%    75%  97.5% 
    ## 0.1066 0.5158 0.8022 1.1322 2.0205

In nematodes it is also significant.

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##       0.791859       0.311020       0.009835       0.013868 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##   2.5%    25%    50%    75%  97.5% 
    ## 0.2657 0.5796 0.7711 0.9773 1.4645

Here is the plot. The increase in cestodes and nematodes is clear, but
not in acanths.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-160-1.png)<!-- -->

## Age at maturity

Like for size at maturity, age at maturity across phyla (increase in
marginal r2) but life cycle length effects might not vary with phyla (no
increase in conditional r2).

<div class="kable-table">

| model           | r2m                   | r2c                   |
| :-------------- | :-------------------- | :-------------------- |
| lcl categorical | 0.031 \[0.008-0.079\] | 0.887 \[0.825-0.951\] |
| lcl x phylum    | 0.129 \[0.034-0.392\] | 0.872 \[0.801-0.947\] |

</div>

Let’s check how age at maturity varied with life cycle length. For
acanths, the change was not significant.

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##       0.047707       0.168334       0.005323       0.011299 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##     2.5%      25%      50%      75%    97.5% 
    ## -0.25151 -0.07138  0.03856  0.15250  0.41135

Nor was it significant for cestodes.

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##       0.172995       0.109169       0.003452       0.007603 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##    2.5%     25%     50%     75%   97.5% 
    ## -0.0254  0.0990  0.1651  0.2384  0.4130

But it did increase for nematodes.

    ## 
    ## Iterations = 1:29971
    ## Thinning interval = 30 
    ## Number of chains = 1 
    ## Sample size per chain = 1000 
    ## 
    ## 1. Empirical mean and standard deviation for each variable,
    ##    plus standard error of the mean:
    ## 
    ##           Mean             SD       Naive SE Time-series SE 
    ##       0.201367       0.069006       0.002182       0.004712 
    ## 
    ## 2. Quantiles for each variable:
    ## 
    ##    2.5%     25%     50%     75%   97.5% 
    ## 0.07557 0.15292 0.20078 0.25021 0.34169

Here is the plot. The increase in nematodes is clear, but not in acanths
or cestodes.

![](by_phyla_imp_files/figure-gfm/unnamed-chunk-166-1.png)<!-- -->

## Lifetime growth rate

Growth rate over the full cycle did not differ among worms with long or
short life cycles.
![](by_phyla_imp_files/figure-gfm/unnamed-chunk-167-1.png)<!-- -->
