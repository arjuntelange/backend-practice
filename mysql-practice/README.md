# MySQL Practice

Short, hands-on practice to refresh SQL and become comfortable using MySQL from both saved scripts and a database client. Keep each exercise in a `.sql` file so it can be rerun and reviewed.

## How to run the practice

Recommended: use **MySQL Workbench** as the visual app and save the scripts in this folder. Open a `.sql` file in Workbench, connect to your local MySQL server, then run the whole script or a selected statement. The result grid shows query results, and the output area shows messages or errors.

The `.sql` files are plain text and are not tied to Workbench. You can also run them from the MySQL command-line client (`mysql`) by connecting to your local server and using `source path/to/file.sql;`. The command line is useful to learn later, but there is no need to choose only one: write and save in this folder, then execute in the client you prefer.

> Workbench is a client; it connects to a MySQL Server. Make sure the local server is running and connect to it before running scripts. Do not put your database password in this repository.

## Quick roadmap

Aim for focused sessions, not a week-long course. Skip topics you already know and spend most time writing queries yourself.

1. **Setup and schema** — connect, create/select a practice database, create tables, choose data types, and use primary and foreign keys.
2. **CRUD and filtering** — `INSERT`, `SELECT`, `UPDATE`, `DELETE`, `WHERE`, `ORDER BY`, `LIMIT`, `LIKE`, `IN`, `BETWEEN`, and `NULL` checks.
3. **Summaries** — aggregate functions, `GROUP BY`, `HAVING`, and date/string functions.
4. **Relationships** — `INNER JOIN`, `LEFT JOIN`, joining multiple tables, and finding unmatched rows.
5. **More powerful queries** — subqueries, common table expressions (CTEs), and window functions if they are part of your course.
6. **Reliable database design** — constraints, normalization basics, indexes and `EXPLAIN`, plus transactions with `COMMIT` and `ROLLBACK`.
7. **Mini project** — model a small course or store database, add sample rows, and answer realistic questions using joins and grouped queries.

## Files

```text
mysql-practice/
├── README.md
├── 01-setup-and-tables.sql
├── 02-crud-and-filtering.sql
├── 03-aggregates.sql
├── 04-joins.sql
├── 05-subqueries-and-cte.sql
├── 06-constraints-indexes-transactions.sql
└── 07-mini-project.sql
```

We'll work through these in order, adjusting for what you have already learned. Start with `01-setup-and-tables.sql`.
