/*
SQL Query that finds the data that is not current
*/

SELECT * FROM table
WHERE DATE(date_column) != CURRENT_DATE()
