# SELECT with conditions
The most basic way to filter results is to specify a condition with `WHERE`:
```sql
SELECT *
FROM authors
WHERE country = 'USA'
```

You can also specify a `WHERE` across multiple conditions with `IN`:
```sql
SELECT *
FROM authors
WHERE country IN ('Germany', 'France')
```

Or negate with `WHERE NOT`:
```sql
SELECT *
FROM authors
WHERE NOT country = 'USA'
```

Get more fine-grained with `AND` and `OR` conditions:
```sql
SELECT *
FROM authors
WHERE country = 'USA'
AND last_name = 'Hansen'
```

```sql
SELECT *
FROM authors
WHERE last_name = 'Hansen'
OR last_name = 'Hane'
```

Or even get 'fuzzy' with ILIKE:
```sql
SELECT *
FROM authors
WHERE last_name ILIKE 'han%'
--WHERE LOWER(last_name) LIKE LOWER('HAN%')
```
