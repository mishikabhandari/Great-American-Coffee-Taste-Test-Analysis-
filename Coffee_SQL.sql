SELECT * FROM coffee_data;
-- Which age group drinks the most brew?
SELECT age,COUNT(brew) as total_brew
FROM coffee_data 
GROUP BY age
ORDER BY total_brew DESC;
-- Which gender drinks the most coffee?
SELECT gender,COUNT(brew) as total_brew
FROM coffee_data 
GROUP BY gender
ORDER BY total_brew DESC;
-- Which education level drinks the most coffee?
SELECT education_level,COUNT(brew) as total_brew
FROM coffee_data 
GROUP BY education_level
ORDER BY total_brew DESC;
-- Which employment group consumes the most coffee?
SELECT employment_status, COUNT(brew) AS total_brew
FROM coffee_data
GROUP BY employment_status
ORDER BY total_brew DESC;
-- Most preferred coffee type.
SELECT brew, COUNT(*) AS total_people
FROM coffee_data
GROUP BY brew
ORDER BY total_people DESC
LIMIT 1;
-- Most preferred brew method.
SELECT brew_other,  COUNT(*) AS total_people FROM coffee_data
group by brew_other
ORDER BY total_people DESC
LIMIT 1 OFFSET 1;
-- Most preferred roast level.
SELECT roast_level , COUNT(*) AS total_people FROM coffee_data
GROUP BY roast_level
ORDER BY total_people DESC
LIMIT 1 OFFSET 1;
-- Most preferred coffee strength.
SELECT strength , COUNT(*) AS total_people FROM coffee_data
GROUP BY strength
ORDER BY total_people DESC
LIMIT 1 OFFSET 1;
-- Preferred caffeine level by age.
SELECT age, caffeine , count(*) AS total FROM coffee_data
group by caffeine,age
ORDER BY total DESC;
-- Preferred additions (milk/sweeteners).
SELECT additions,count(*) as total from coffee_data
group by additions
order by total DESC;
-- Daily coffee consumption by age group.
SELECT AVG(cups) as daily_counsumption FROM coffee_data;
-- Daily coffee consumption by age group.
SELECT SUM(spend), SUM(spend_on_equipment) FROM coffee_data;
-- Highest willingness-to-pay coffee.
SELECT most_willing,COUNT(*) as highest_willingness from coffee_data
group by most_willing
order by highest_willingness DESC;
-- Purchase method preferences.
SELECT purchase , COUNT(*) as method_preferences from coffee_data
group by purchase
order by method_preferences DESC;