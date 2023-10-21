SELECT DISTINCT a.N,
CASE WHEN a.P is null then "Root"
WHEN CHILD.N is null then "Leaf"
WHEN CHILD.N is not null then "Inner"
end
FROM BST a
LEFT JOIN(SELECT * FROM BST) CHILD on a.N = CHILD.P
ORDER BY a.N