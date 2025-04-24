SELECT name, population
FROM country
WHERE region = 'Southern Europe'
ORDER BY population ASC
LIMIT 1;

SELECT language
FROM countrylanguage
WHERE countrycode = (
  SELECT code
  FROM country
  WHERE name = 'San Marino'
) AND isofficial = 'T';

SELECT country.name
FROM country
JOIN countrylanguage ON country.code = countrylanguage.countrycode
WHERE language = 'Italian'
GROUP BY country.name
HAVING COUNT(language) = 1;

SELECT city.name
FROM city
JOIN country ON city.countrycode = country.code
WHERE country.name = 'Italy' AND city.name != 'Italy';
