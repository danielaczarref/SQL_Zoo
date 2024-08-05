1. Change the query shown so that it displays Nobel prizes for 1950.

SELECT yr, subject, winner FROM nobel WHERE yr = 1950

2. Show who won the 1962 prize for literature.

SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'literature'

3. Show the year and subject that won 'Albert Einstein' his prize.

SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein'

4. Give the name of the 'peace' winners since the year 2000, including 2000.

SELECT winner FROM nobel WHERE subject = 'peace' and yr between 2000 and 2024

5. Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive.

select * from nobel where yr between 1980 and 1989 and subject = 'literature' 

6. Show all details of the presidential winners:

select * from nobel where winner in ('Theodore Roosevelt', 'Jimmy Carter', 'Barack Obama')

7. Show the winners with first name John

select winner from nobel where winner like 'John%'

8. Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984.

SELECT * FROM nobel WHERE (subject = "Physics" AND yr = '1980') OR (subject = 'Chemistry' AND yr = 1984)

9. Show the year, subject, and name of winners for 1980 excluding chemistry and medicine

select * from nobel where yr = 1980 and subject not in ('chemistry', 'medicine')

10.Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)

select yr, subject, winner from nobel where (subject='medicine' and yr < 1910) or (subject='literature' and yr >= 2004)

11. Find all details of the prize won by PETER GRÜNBERG

select * from nobel where winner = 'PETER GRÜNBERG'

12. Find all details of the prize won by EUGENE O\NEILL

select * from nobel where winner = "EUGENE O'NEILL"

13. List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

SELECT winner, yr, subject FROM nobel WHERE winner like 'Sir%' ORDER BY yr DESC, winner

14. Show the 1984 winners and subject ordered by subject and winner name; but list chemistry and physics last.

SELECT winner, subject FROM nobel WHERE yr=1984 ORDER BY subject IN ('Physics','Chemistry'),subject,winner


-- Quiz

1. Pick the code which shows the name of winners names beginning with C and ending in n

SELECT winner FROM nobel WHERE winner LIKE 'C%' AND winner LIKE '%n'

2. Select the code that shows how many Chemistry awards were given between 1950 and 1960

SELECT COUNT(subject) FROM nobel WHERE subject = 'Chemistry' AND yr BETWEEN 1950 and 1960

3. Pick the code that shows the amount of years where no Medicine awards were given

SELECT COUNT(DISTINCT yr) FROM nobel WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')

4. Select the result that would be obtained from the following code: SELECT subject, winner FROM nobel WHERE winner LIKE 'Sir%' AND yr LIKE '196%'

Medicine	Sir John Eccles
Medicine	Sir Frank Macfarlane Burnet

5. Select the code which would show the year when neither a Physics or Chemistry award was given

SELECT yr FROM nobel WHERE yr NOT IN(SELECT yr FROM nobel WHERE subject IN ('Chemistry','Physics'))

6. Select the code which shows the years when a Medicine award was given but no Peace or Literature award was

SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace')


7. Pick the result that would be obtained from the following code:  
  SELECT subject, COUNT(subject) 
   FROM nobel 
  WHERE yr ='1960' 
  GROUP BY subject

Chemistry	1
Literature	1
Medicine	2
Peace	1
Physics	1














