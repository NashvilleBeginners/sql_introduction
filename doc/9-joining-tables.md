# Select data from more than one table

I always like to re-read this blog post by Jeff Atwood: https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/
Join tables by specifying the table to join, the type of join, and the condition
to join on:
```sql
SELECT titles.name AS title_name, publishers.name AS publisher_name
FROM titles
INNER JOIN publishers
ON titles.publisher_id = publishers.id
WHERE publishers.city = 'New York'
ORDER BY publishers.name ASC
```

Or make your life easier with `table aliases`:
```sql
SELECT t.name AS title_name, p.name AS publisher_name
FROM titles t
INNER JOIN publishers p
ON t.publisher_id = p.id
WHERE p.city = 'New York'
ORDER BY p.name ASC
```

## `LEFT OUTER JOIN`
```
SELECT a.last_name, a.city AS auth_city, p.city AS pub_city, p.name
FROM authors a
LEFT OUTER JOIN publishers p
ON a.city = p.city
```
