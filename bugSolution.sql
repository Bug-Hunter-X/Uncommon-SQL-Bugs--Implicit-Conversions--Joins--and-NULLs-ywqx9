The best way to solve these issues is by using explicit data type conversion, explicit join conditions, and proper handling of NULL values. Here's how:

**1. Explicit Data Type Conversion:** Always explicitly cast data types before comparison to avoid implicit conversions.  In the 'id' example, the correct query would be: 
```sql
SELECT * FROM table WHERE CAST(id AS INT) = 1;
```
This explicitly converts the 'id' column to an integer before comparing it to the integer value 1.  For string comparisons, consider using string functions for safer comparison.  Always favor explicit casts.

**2. Explicit Join Conditions:** Always specify the join condition explicitly using the `ON` clause in `JOIN` statements. This avoids unintended Cartesian products:
```sql
SELECT * FROM table1 JOIN table2 ON table1.id = table2.id;
```
This ensures that only matching rows from both tables are joined.  Consider carefully using LEFT JOIN, RIGHT JOIN, INNER JOIN appropriately to target specific results.

**3. Proper NULL Handling:** Use `IS NULL` and `IS NOT NULL` operators to correctly handle NULL values. For example:
```sql
SELECT * FROM table WHERE column IS NULL OR column = 'someValue';
```
This explicitly checks for both NULL values and the specified value 'someValue'.  Using = for NULL comparisons will lead to unexpected results.  Use the IS NULL / IS NOT NULL predicates.

By following these best practices, you can significantly reduce the risk of encountering these common SQL bugs.