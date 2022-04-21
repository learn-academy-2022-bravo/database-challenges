# Challenges: SQL Country Database

# Save your queries in a file if you want to keep them for posterity.

# WHERE

# What is the population of the US? (HINT: 278357000)
SELECT code, name, population  
FROM country
WHERE population = 278357000

# What is the area of the US? (HINT: 9.36352e+06)
SELECT name, population, surfacearea
FROM country
WHERE name
IN ('United States');

# Which countries gained their independence before 1963?
SELECT code, name, indepyear
FROM country
WHERE indepyear < 1963

# List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT code, name, population, lifeexpectancy
FROM country
WHERE population < 30000000 AND lifeexpectancy > 45

# Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, population, governmentform
FROM country
WHERE governmentform
LIKE '%Republic';

# Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
WITH the_republics AS (
	SELECT code, name, governmentform, indepyear
	from country
	WHERE governmentform
	LIKE '%Republic'
)
SELECT code, name, governmentform, indepyear
from the_republics
WHERE indepyear > 1945

SELECT name, governmentform, indepyear
FROM country
WHERE governmentform LIKE '%Republic' AND indepyear > 1945

# Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
# ORDER BY

SELECT name, governmentform, indepyear
FROM country
WHERE governmentform !='Republic' AND indepyear > 1945

# Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy ASC
LIMIT 15;

# Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT null
ORDER BY lifeexpectancy DESC
LIMIT 15;

# Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)


# Which countries have the highest population density?(HINT: starts with Macao)
# Which is the smallest country by area? (HINT: .4)
# Which is the smallest country by population? (HINT: 50)?
# Which is the biggest country by area? (HINT: 1.70754e+07)
# Which is the biggest country by population? (HINT: 1277558000)
# Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
# Subqueries: WITH

# Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
# Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
# Aggregate Functions: GROUP BY

# Which region has the highest average gnp? (HINT: North America)
# Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
# What is the average life expectancy for all continents?
# What are the most common forms of government? (HINT: use count(*))
# How many countries are in North America?
# What is the total population of all continents?














