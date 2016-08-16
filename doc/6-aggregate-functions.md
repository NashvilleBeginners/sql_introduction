# Let the DB do the work with aggregate functions

SQL aggregate functions let you let the DB do the work:
* `MAX`
* `MIN`
* `SUM`
* `AVG` (NB that's the arithmetic mean)
* `COUNT`
* `DISTINCT`

```sql
SELECT MIN(published_at) as date_min, MAX(published_at) as date_max
FROM titles
```
