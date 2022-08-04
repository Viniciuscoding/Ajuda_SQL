/*
SQL Query to find the first date the data was added
*/

SELECT * FROM (SELECT * FROM past_data_table pdt
               WHERE NOT EXISTS (SELECT * FROM current_data_table cdt
                                 WHERE pdt.column_name = cdt.column_name)
              ) AS fd
GROUP BY fd.column_name
HAVING fd.date_column = MIN(fd.date_column)
