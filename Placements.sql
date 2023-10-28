SELECT a.Name
FROM Students a
LEFT JOIN(SELECT * FROM Friends) b on b.id = a.id
LEFT JOIN(SELECT * FROM Packages) best_friend on best_friend.id= b.Friend_id
LEFT JOIN(SELECT * FROM Packages) self on self.id = b.id
WHERE best_friend.Salary > self.Salary
ORDER BY best_friend.Salary