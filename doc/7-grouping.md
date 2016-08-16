# Grouping data
Divide data into groups and use aggregates for insight:
```sql
SELECT genre, COUNT(*)
FROM titles
GROUP BY genre
ORDER BY count DESC
```

or use `HAVING` to narrow results:
```sql
SELECT genre, COUNT(id)
FROM titles
GROUP BY genre
HAVING genre = 'Horror' OR genre = 'Mythology'
```
