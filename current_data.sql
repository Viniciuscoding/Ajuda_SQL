/*
SQL Query that finds the current data only
*/

SELECT * FROM table
WHERE DATE(date_column) = CURRENT_DATE()
