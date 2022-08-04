/*
SQL Query to find the last date the data was added
*/

SELECT * FROM (SELECT * FROM past_data_table pdt
               WHERE NOT EXISTS (SELECT 1 FROM current_data_table cdt
                                 WHERE pdt.column_name = cdt.column_name)
              ) AS ld
GROUP BY ld.column_name
HAVING ld.date_column = MAX(ld.date_column)
