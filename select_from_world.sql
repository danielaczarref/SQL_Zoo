-- SELECT from world
1. Observe the result of running this SQL command to show the name, continent and population of all countries.

SELECT name, continent, population FROM world

2. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name FROM world WHERE population >= 200000000

3. Give the name and the per capita GDP for those countries with a population of at least 200 million.

select name, gdp/population from world where population >= 200000000

4. Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

select name, population/1000000  from world where continent = 'South America'

5. Show the name and population for France, Germany, Italy

select name, population from world where name in ('France', 'Germany', 'Italy')

6. Show the countries which have a name that includes the word 'United'

select name from world where name like '%United%'

7. Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million. Show the countries that are big by area or big by population. Show name, population and area.

select name, population, area from world where population >= 250000000 or area >= 3000000

8. Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area. 

select name, population, area from world where population >= 250000000 xor area >= 3000000

9. Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places. For Americas show population in millions and GDP in billions both to 2 decimal places.

select name, round(population/1000000, 2), round(gdp/1000000000, 2) from world where continent = 'South America'

10. Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000. Show per-capita GDP for the trillion dollar countries to the nearest $1000.

SELECT name, ROUND(gdp/population, -3) FROM world WHERE gdp > 1000000000000

11. Show the name and capital where the name and the capital have the same number of characters.
  
SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital)

12. Show the name and the capital where the first letters of each match. Dont include countries where the name and the capital are the same word.

SELECT name, capital FROM world where LEFT(name, 1) = LEFT(capital, 1) and name <> capital

13. Find the country that has all the vowels and no spaces in its name.

SELECT name FROM world WHERE name NOT LIKE '% %' and name like '%a%' and name like '%e%' and name like '%i%' and name like '%o%' and name like '%u%'

-- Quiz

1. Select the code which gives the name of countries beginning with U

SELECT name FROM world WHERE name LIKE 'U%'

2. Select the code which shows just the population of United Kingdom?

SELECT population FROM world WHERE name = 'United Kingdom'

3. Select the answer which shows the problem with this SQL code - the intended result should be the continent of France:
 SELECT continent FROM world WHERE 'name' = 'France'

'name' should be name

4. Select the result that would be obtained from the following code:
 SELECT name, population / 10 FROM world WHERE population < 10000

Nauru | 990

5. Select the code which would reveal the name and population of countries in Europe and Asia

SELECT name, population FROM world WHERE continent IN ('Europe', 'Asia')

6. Select the code which would give two rows

SELECT name FROM world WHERE name IN ('Cuba', 'Togo') 

7. Select the result that would be obtained from this code:
SELECT name FROM world WHERE continent = 'South America' AND population > 40000000

Brazil, Colombia







