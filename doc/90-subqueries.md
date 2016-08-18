# Subqueries
Sometimes it's easier to express a `JOIN` as a subqiery

```sql
SELECT *
FROM publishers
WHERE id IN (
  SELECT publisher_id
  FROM titles
  WHERE genre = 'Humor'
)
```

## Watch out for dependent subqueries
If you can run your subquery by itself--i.e. outside the context of your main
query--then it is an *independent subquery*. In contrast, dependent subqueries
or [correlated subqueries](https://en.wikipedia.org/wiki/Correlated_subquery)
can be super inefficient.

