# Employee_Payroll

1.   Querying a Table

a.   Write a query that displays all rows and all columns from the orion.Employee_Payroll table.
b.   Modify the previous query and alter it so that only the columns for Employee_ID, Employee_Gender, Marital_Status, and Salary are displayed.




2.   Calculating a Column
Write a query that generates report. The report should do the following:
•	display Employee_ID, Employee_Gender, Marital_Status, Salary, and a new column (Tax) that is one-third of the employee's salary
•	use the orion.Employee_Payroll table



3.   Conditional Processing
Create a report that displays Employee_ID, Level, Salary, and Salary_Range using the orion.Staff table. Level and Salary_Range are two new columns in the report. Conditionally assign values to the two new columns as follows:
Job_Title
(Last Word)	Level	Salary Ranges
		Low	Medium	High
Manager	Manager	< 52,000	52,000-72,000	> 72,000
Director	Director	<108,000	108,000-135,000	> 135,000
Officer, President	Executive	<240,000	240,000-300,000	> 300,000
Other	N/A	DO NOT INCLUDE IN THE REPORT.



4.   Eliminating Duplicates
Write a query that generates a report that displays the cities where the Orion Star employees reside. The report should do the following:
•	include the title Cities Where Employees Live
•	display one unique row per City
•	use the orion.Employee_Addresses table




5.   Subsetting Data
Write a query that generates a report that displays Orion Star employees whose total charitable contributions exceed $90.00. The report should have the following characteristics:
•	include the title Donations Exceeding $90.00 display Employee_ID, Recipients, and the new column Total that represents the total charitable contribution for each employee over the four quarters
•	use the orion.Employee_donations table
•	include only employees whose charitable contribution Total for all four quarters exceeds $90.00

