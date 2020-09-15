```{r}
library(taxize)
```

```{r}
queries <- filter(size_diet, db == 'eol', is.na(family))
queries <- unique(queries$genus_null)
```

```{r}
eol_tax <- read.delim(file = 'C:/Users/EliteBook HP840/Downloads/DH_v1_1.tar/DH_v1_1/taxon.tab')
```
```{r}
eol_tax <- filter(eol_tax, scientificName %in% queries)
t1 <- filter(eol_tax, scientificName == 'Aegisthus')$EOLid
eol_tax_ids <- eol_tax$EOLid
eol_tax_ids <- na.omit(unique(eol_tax_ids))
```

```{r}
i <- 1
for(e in eol_tax_ids){
  ep <- eol_pages(e)
  id <- ep$scinames$identifier[1]
  sci_name <- ep$scinames$scientificname[1]
  out <- data.frame(eol_tax_id = e, query_id = id, query_name = sci_name)
  if(e == eol_tax_ids[1]){
    out_df <- out
  } else {
    out_df <- rbind(out_df, out)
  }
  print(i)
  i <- i+1
}
```

```{r}
eol_tax <- classification(out_df$query_id, db = 'eol')
```

```{r}
eol_tax <- rbind(eol_tax)
eol_tax <- filter(eol_tax, rank %in% c('genus', 'family', 'order', 'class', 'phylum', 'kingdom'))
eol_tax <- left_join(eol_tax, 
                     mutate(out_df, query_id = as.character(query_id)),
                     by = c("query" = "query_id"))
eol_tax <- eol_tax%>%distinct()%>%
  pivot_wider(id_cols = query_name, names_from = rank, values_from = name,
              values_fn = list(name = function(x){x[1]}))
eol_tax <- mutate(eol_tax, 
                  query_name = if_else( !grepl(' ', query_name), query_name, 
                                        substr(query_name, 1, stop = regexpr(" ", query_name)-1)),
                  genus = if_else( !grepl(' ', genus), genus, 
                                   substr(genus, 1, stop = regexpr(" ", genus)-1)),
                  family = if_else( !grepl(' ', family), family, 
                                    substr(family, 1, stop = regexpr(" ", family)-1)),
                  order = if_else( !grepl(' ', order), order, 
                                   substr(order, 1, stop = regexpr(" ", order)-1)),
                  class = if_else( !grepl(' ', class), class, 
                                   substr(class, 1, stop = regexpr(" ", class)-1)))

eol_tax <- filter(eol_tax, kingdom == 'Metazoa')%>%
  select(sp.query = query_name, genus, family, order, class, phylum)%>%
  distinct()
```
```{r}
write.csv(eol_tax, file = '../../data/eol_taxonomy.csv', row.names = F)
```

```{r}
library(rfishbase)
data(fishbase) #adds table of species from fishbase to workspace
```
```{r}
fishes <- filter(size_diet, db == 'fishbase', is.na(genus))%>%
  select(genus_null)%>%
  distinct()
fishes_v <- validate_names(fishes$binomial) # validate names
```

We'll also get fish sizes as a quality control.

```{r}
tf1 <- load_taxa()
tf1 <- select(tf1, sp.query = 'Species', genus = Genus, family = Family, order = Order, class = Class)
tf1$phylum <- 'Chordata'
tf1$source <- 'fishbase'
tf1 <- arrange(tf1, genus)
distinct(tf1)
```
```{r}
write.csv(tf1, file = '../../data/fishbase_taxonomy.csv', row.names = F)
```

```{r}
host.tax2 <- host.tax
host.tax2$db <- 'ncbi' 
host.tax2 <- bind_rows(host.tax2, tf1)
host.tax2 <- select(host.tax2, sp.query, genus, family, order, class, phylum, db)%>%distinct()
```
```{r}
host.tax2 <- filter(host.tax2, class == 'Actinopteri')%>%arrange(sp.query)%>%select(-sp.query, -db)%>%distinct()
group_by(host.tax2, genus)%>%
  summarise(n = n())%>%
  arrange(desc(n))
```


```{r}
table(tf1$class)
```

