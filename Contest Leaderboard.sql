SELECT a.hacker_id, a.name, SUM(b.score) as score
FROM Hackers a
LEFT JOIN(
    SELECT a.hacker_id, a.challenge_id, MAX(a.score) as score
    FROM Submissions a 
    LEFT JOIN(SELECT * FROM Hackers) d on d.hacker_id = a.hacker_id
    GROUP BY a.hacker_id, a.challenge_id) b on b.hacker_id = a.hacker_id
GROUP BY a.hacker_id, a.name
HAVING score > 0 
ORDER BY score desc, hacker_id;