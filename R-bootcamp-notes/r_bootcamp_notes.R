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
