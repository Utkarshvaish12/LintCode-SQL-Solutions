SELECT s.name
FROM Student s
JOIN Friend f ON s.id = f.id
JOIN Score s1 ON s.id = s1.id
JOIN Score s2 ON f.fid = s2.id
WHERE s1.value < s2.value
ORDER BY s2.value DESC;
