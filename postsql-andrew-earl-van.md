## What is the population of the US? (HINT: 278357000)
SELECT name, population 
FROM country
Where name = 'United States'

Answer: "United States"	278357000

## What is the area of the US? (HINT: 9.36352e+06)
SELECT name, population, surfacearea
FROM country
Where name = 'United States'

Answer: "United States"	278357000	9.36352e+06
## Which countries gained their independence before 1963?
SELECT name, population, indepyear
FROM country
Where indepyear < 1963

Answer: "Afghanistan"	22720000	1919
"Netherlands"	15864000	1581
"Albania"	3401200	1912 etc..

## List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, population, indepyear, lifeexpectancy
FROM country
Where population < 30000000 AND lifeexpectancy > 45

Answer: "Afghanistan"	22720000	1919	45.9
"Netherlands"	15864000	1581	78.3
"Netherlands Antilles"	217000		74.7 etc..

## Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, population, governmentform
FROM country
WHERE governmentform LIKE ('%Republic')

Answer: "Albania"	3401200	"Republic"
"Algeria"	31471000	"Republic"
"Angola"	12878000	"Republic"
"Argentina"	37032000	"Federal Republic" etc..

## Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, population, governmentform, indepyear
FROM country
WHERE governmentform LIKE ('%Republic') AND indepyear > 1945

Answer: 
"Algeria"	31471000	"Republic"	1962
"Angola"	12878000	"Republic"	1975
"Armenia"	3520000	"Republic"	1991 etc..
## Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, population, governmentform, indepyear
FROM country
WHERE governmentform NOT LIKE ('%Republic') AND indepyear > 1945

Answer: "Antigua and Barbuda"	68000	"Constitutional Monarchy"	1981
"United Arab Emirates"	2441000	"Emirate Federation"	1971
"Bahamas"	307000	"Constitutional Monarchy"	1973 etc..

## Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

## Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

## Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

## Which countries have the highest population density?(HINT: starts with Macao)

## Which is the smallest country by area? (HINT: .4)

## Which is the smallest country by population? (HINT: 50)?

## Which is the biggest country by area? (HINT: 1.70754e+07)

## Which is the biggest country by population? (HINT: 1277558000)

## Who is the most influential head of state measured by population? (HINT: Jiang Zemin)