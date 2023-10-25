SELECT CEIL(AVG(Salary) - AVG(mis.avg))
FROM EMPLOYEES org
LEFT JOIN(SELECT id, Name, REPLACE(Salary, '0', '') as avg
          FROM EMPLOYEES
         ) mis on org.id = mis.id