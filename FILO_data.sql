# Query that looks for the data of new data after the first date and last data before the last date

(SELECT data_column,  "First In" AS state, MIN(date_column) AS date_column
FROM (SELECT DISTINCT data_column, date_column FROM table
      WHERE data_column NOT IN (SELECT DISTINCT data_column FROM table
                                WHERE date_column IN (SELECT MIN(date_column) FROM table
GROUP BY data_column
UNION ALL
(SELECT data_column,  "Last Out" AS state, MAX(date_column) AS date_column
FROM (SELECT DISTINCT data_column, date_column FROM table
      WHERE data_column NOT IN (SELECT DISTINCT data_column FROM table
                                WHERE date_column IN (SELECT MAX(date_column) FROM table
GROUP BY data_column 
