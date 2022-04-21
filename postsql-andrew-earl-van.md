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
SELECT name, population, lifeexpectancy
FROM country
Where  population < 30000000 
	AND lifeexpectancy > 45 
	AND continent = 'Africa'

Answer: 
""Benin"	6097000	50.2
"Burkina Faso"	11937000	46.7
"Burundi"	6695000	46.2 etc..

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
SELECT name, population, lifeexpectancy
FROM country
order by lifeexpectancy
limit 15

answer :
"Zambia"	9169000	37.2
"Mozambique"	19680000	37.5
"Malawi"	10925000	37.6
"Zimbabwe"	11669000	37.8 ect...


## Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name, population, lifeexpectancy
FROM country
where population > 0 and lifeexpectancy > 0
order by lifeexpectancy Desc
limit 15

answer :
"Andorra"	78000	83.5
"Macao"	473000	81.6
"San Marino"	27000	81.1 ect


## Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name, population, lifeexpectancy ,
population/surfacearea AS density
FROM country
where population > 0
Order BY density
limit 5

answer:
"Greenland"	56000	68.1	0.025853034730782192
"Svalbard and Jan Mayen"	3200		0.051263977443849924
"Falkland Islands"	2000		0.16429803663846218
"Pitcairn"	50		1.0204081632653061
"Western Sahara"	293000	49.8	1.1015037593984962


## Which countries have the highest population density?(HINT: starts with Macao)

SELECT name, population, lifeexpectancy ,
population/surfacearea AS density
FROM country
where population > 0
Order BY density DESC
limit 5

answer:
"Macao"	473000	81.6	26277.777777777777
"Monaco"	34000	78.8	22666.666666666668
"Hong Kong"	6782000	79.5	6308.837209302325
"Singapore"	3567000	80.1	5771.844660194175
"Gibraltar"	25000	79	4166.666666666667

## Which is the smallest country by area? (HINT: .4)

SELECT name, surfacearea
FROM country
Order BY surfacearea
limit 1

answer:
"Holy See (Vatican City State)"	0.4

## Which is the smallest country by population? (HINT: 50)?

SELECT name, population, gnp
FROM country
where population > 0
ORDER BY population

answer:
"Pitcairn"	50	0.00

## Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea, population
FROM country
Order BY surfacearea desc

answer:
"Russian Federation"	1.70754e+07	146934000

## Which is the biggest country by population? (HINT: 1277558000)

SELECT name, population, gnp
FROM country
where population > 0
ORDER BY population desc

answer:
"China"	1277558000	982268.00

## Who is the most influential head of state measured by population? (HINT: Jiang Zemin)

SELECT name, surfacearea, population, headofstate
FROM country
where population > 0
Order BY population DESC

answer:
"China"	9.5729e+06	1277558000	"Jiang Zemin"

## Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)

WITH lower_pop AS (SELECT name, population, gnp
FROM country
where population > 0 AND gnp > 0
ORDER by gnp desc
limit 10) 

SELECT name, population, gnp
FROM lower_pop
ORDER BY population asc

answer:
"Canada"	31147000	598862.00

## Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)

WITH lower_pop AS (SELECT name, population, surfacearea
FROM country
where population > 0
ORDER by population
limit 10) 

SELECT name, population, surfacearea
FROM lower_pop
ORDER BY surfacearea desc

answer:
"Svalbard and Jan Mayen"	3200	62422
"Falkland Islands"	2000	12173
"Saint Helena"	6000	314 ect..