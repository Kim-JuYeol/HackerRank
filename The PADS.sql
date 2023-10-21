SELECT CONCAT(Name, 
CASE WHEN Occupation = "Doctor" then "(D)"
WHEN Occupation = "Singer" then "(S)"
WHEN Occupation = "Professor" then "(P)"
WHEN Occupation = "Actor" then "(A)"
END)
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT("There are a total of ", COUNT(*), " ", LOWER(Occupation), "s.")
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), LOWER(Occupation)