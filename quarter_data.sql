# SQL Query that finds date from the current date to a quarter ago.

SELECT * FROM table
WHERE DATE(date_column) <= CURRENT_DATE() AND DATE(date_column) >= CURRENT_DATE() - 91
ODER BY date_column
