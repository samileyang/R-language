#For each of 142 countries, the data provides values for life expectancy, GDP per capita, and population, every five years, from 1952 to 2007
# Gapminder.org
gapminder <-  read.csv("gapminder-FiveYearData.csv",stringsAsFactors = TRUE)

mean(gapminder[gapminder$continent == "Africa", "gdpPercap"])

mean(gapminder[gapminder$continent == "Americas" , "gdpPercap"])

'select()
filter()
group_by()
summarize()
mutate()
arrange()'

library(dplyr)
library(stats)
library(base)

#select()

year_country_gdp <- select(gapminder, year, country, gdpPercap)
head(year_country_gdp)

year_country_gdp <- gapminder %>% select(year,country,gdpPercap)
head(year_country_gdp)

year_country_gdp_africa <- gapminder %>% 
  filter(continent == "Africa") %>%
  select(year,country,gdpPercap)

#split-apply-combine
gapminder$mean.contient.GPD <- NULL

gdp_bycontinents <- gapminder %>%
  group_by(continent) %>%
  summarize(mean_gdpPercap = mean(gdpPercap))
head(gdp_bycontinents)

gdp_bycontinents_byyear <- gapminder %>%
  group_by(continent,year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap))
show(gdp_bycontinents_byyear)

gdp_pop_bycontinents_byyear <- gapminder %>%
  group_by(continent,year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop))
head(gdp_pop_bycontinents_byyear)

gdp_pop_bycontinents_byyear_2 <- gapminder %>%
  group_by(continent,year) %>%
  summarise(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop))
head(gdp_pop_bycontinents_byyear)

gapminder_with_extra_vars <- gapminder %>%
  group_by(continent, year) %>%
  mutate(mean_gdpPercap = mean(gdpPercap),
         sd_gdpPercap = sd(gdpPercap),
         mean_pop = mean(pop),
         sd_pop = sd(pop))
head(gapminder_with_extra_vars)

gdp_pop_bycontinents_byyear <- gapminder %>%
  mutate(gdp_billion = gdpPercap*pop/10^9) %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop),
            mean_gdp_billion = mean(gdp_billion),
            sd_gdp_billion = sd(gdp_billion))
head(gdp_pop_bycontinents_byyear)

gapminder_with_extra_vars <- gapminder %>%
  group_by(continent, year) %>%
  mutate(mean_gdpPercap = mean(gdpPercap),
         sd_gdpPercap = sd(gdpPercap),
         mean_pop = mean(pop),
         sd_pop = sd(pop)) %>%
  arrange(desc(year), continent)
head(gapminder_with_extra_vars)

library(tidyr)
gap_wide <- read.csv("gapminder_wide.csv",stringsAsFactors =  FALSE)
head(gap_wide)

#gather()
gap_long <- gap_wide %>%
  gather(obstype_year,obs_values,3:38)
head(gap_long)

gap_long <- gap_wide %>%
  gather(obstype_year, obs_values, starts_with('pop'),
         starts_with('lifeExp'), starts_with('gdpPercap'))
head(gap_long)

gap_long <- gap_wide %>% 
  gather(obstype_year, obs_values, -continent, -country)
head(gap_long)

gap_long_sep <- gap_long %>% 
  separate(obstype_year, into = c('obs_type','year'), sep = "_") %>% 
  mutate(year = as.integer(year))
head(gap_long_sep)

gapminder <- read.csv("gapminder-FiveYearData.csv")
head(gap_medium)
head(gapminder)

gap_medium <- gap_medium[,names(gapminder)]
head(gap_medium)

gap_medium <- gap_long_sep %>% 
  spread(obs_type, obs_values)
head(gap_medium)