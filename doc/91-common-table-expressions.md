# Common table expressions
Not exactly introductory stuff, but a fun tool is Common Table Expressions or
CTEs. Make your SQL more readable and composable. The big win here is that
future you will be able to read `horror_books` and know exactly what that means.

```sql
WITH horror_books AS (
SELECT *
FROM titles t
WHERE genre = 'Horror'
)

SELECT *
FROM horror_books
WHERE published_at IS NOT NULL
```


