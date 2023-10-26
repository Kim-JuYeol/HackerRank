SELECT a.hacker_id, d.name
from Submissions a 
LEFT JOIN(SELECT * from Challenges) b on b.challenge_id = a.challenge_id
LEFT JOIN(SELECT * FROM Difficulty) c on c.difficulty_level = b.difficulty_level
LEFT JOIN(SELECT * FROM Hackers) d on d.hacker_id = a.hacker_id
WHERE a.score = c.score
GROUP BY d.name, a.hacker_id
HAVING COUNT(d.name) > 1
ORDER BY COUNT(d.name) desc, a.hacker_id
