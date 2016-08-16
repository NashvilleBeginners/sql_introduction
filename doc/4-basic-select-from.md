# The basic SELECT
```sql
SELECT *
FROM authors
```
or specify fields:

```
SELECT first_name, last_name, country AS country_of_residence
FROM authors
```
Note the `AS` to change the column returned
