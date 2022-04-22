//WHERE
// What is the population of the US? (HINT: 278357000)

SELECT name, population
FROM country
WHERE name = 'United States'

// What is the area of the US? (HINT: 9.36352e+06)

SELECT name, surfacearea
FROM country
WHERE name = 'United States'

// Which countries gained their independence before 1963?

SELECT name, indepyear
FROM country
WHERE indepyear < 1963

// List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more 
//than 45? (HINT: 37 entries)

SELECT name, population, lifeexpectancy
FROM country
WHERE continent = 'Africa'
AND population < 30000000
AND lifeexpectancy > 45


// Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT name, population, governmentform
FROM country
WHERE governmentform LIKE '%epublic'

// Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT name, indepyear, governmentform
FROM country
WHERE governmentform LIKE '%epublic'
AND indepyear > 1945

// Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT name, indepyear, governmentform
FROM country
WHERE governmentform NOT LIKE '%epublic'
AND indepyear > 1945

//=================================================

// ORDER BY
// Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy ASC
LIMIT 15

// Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy desc
LIMIT 15


// Which five countries have the lowest population density (density = population / surfacearea)? (HINT: 
//starts with Greenland)

SELECT name, population, surfacearea, 
population / surfacearea AS Density
FROM country
WHERE population > 0
ORDER BY density ASC
LIMIT 5


// Which countries have the highest population density?(HINT: starts with Macao)

SELECT name, population, surfacearea, 
population / surfacearea AS Density
FROM country
WHERE population > 0
ORDER BY density DESC


// Which is the smallest country by area? (HINT: .4)

//"Holy See (Vatican City State)"

// Which is the smallest country by population? (HINT: 50)?

//"Pitcairn"

// Which is the biggest country by area? (HINT: 1.70754e+07)

//"Russian Federation"

// Which is the biggest country by population? (HINT: 1277558000)

//"China"

// Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
//China

=========================================

// Subqueries: WITH
// Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)

// WITH populated_countries AS (
	SELECT name, population, gnp
	FROM country
	ORDER BY gnp desc
	limit 10
	)
SELECT name, population, gnp
FROM populated_countries
ORDER BY population asc
LIMIT 10;

// Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)

WITH zero_pop AS (
	SELECT name, population, surfacearea
	FROM country
	WHERE population > 0
	ORDER BY population asc
	limit 10
	)
SELECT name, population, surfacearea
FROM zero_pop
ORDER BY surfacearea desc
LIMIT 10;

================================================

// Aggregate Functions: GROUP BY
// Which region has the highest average gnp? (HINT: North America)



// Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)



// What is the average life expectancy for all continents?



// What are the most common forms of government? (HINT: use count(*))



// How many countries are in North America?



// What is the total population of all continents?
