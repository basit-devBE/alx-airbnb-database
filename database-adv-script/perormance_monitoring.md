# Performance Monitoring

## Objective
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

## Instructions

1. **Monitor Performance:**
    - Use SQL commands like `SHOW PROFILE` or `EXPLAIN ANALYZE` to monitor the performance of a few of your frequently used queries.

2. **Identify Bottlenecks:**
    - Analyze the results to identify any bottlenecks in the queries.
    - Suggest changes such as new indexes or schema adjustments to improve performance.

3. **Implement Changes:**
    - Implement the suggested changes.
    - Report the improvements observed after making the changes.

## Example Commands

### Monitoring Query Performance
```sql
SHOW PROFILE FOR QUERY 1;
```

### Analyzing Query Execution Plan
```sql
EXPLAIN ANALYZE SELECT * FROM your_table WHERE condition;
```

### Creating an Index
```sql
CREATE INDEX index_name ON your_table(column_name);
```

### Schema Adjustment
```sql
ALTER TABLE your_table ADD COLUMN new_column datatype;
```

## Reporting Improvements
After implementing the changes, document the improvements in query performance, such as reduced execution time or lower resource usage.
