SELECT 
CASE WHEN b.Grade <= 7 Then "NULL"
ELSE Name
END
, b.Grade, a.Marks
FROM Students a
LEFT JOIN(SELECT * FROM Grades) b on a.Marks between b.Min_Mark and b.Max_Mark
ORDER BY b.Grade DESC, a.Name