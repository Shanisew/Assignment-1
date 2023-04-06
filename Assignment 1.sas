libname Orion "/home/u61762417/my_shared_file_links/jhshows0/STA5067/SAS Data/orion";
run;

/* 

a.   Write a query that displays all rows and all columns from the orion.Employee_Payroll table.

 */

proc sql; 

select * 

from orion.employee_payroll; 

quit;



/* 
b.   Modify the previous query and alter it so that only the columns for Employee_ID, Employee_Gender, Marital_Status, and Salary are displayed. */

proc sql; 

select 

	 Employee_ Id
	,Employee_Gender
	,Marital_Status
	,Salary 
	
from orion.employee_payroll; 

quit; 



/*
Write a query that generates report. The report should do the following:
•	display Employee_ID, Employee_Gender, Marital_Status, Salary, and a new column (Tax) that is one-third of the employee's salary
•	use the orion.Employee_Payroll table


 */
proc sql; 

select 
	
	employee_ID, 
	Employee_Gender 
	,Marital_Status
	,Salary 
	,Salary * 1/3 as Tax
	

from orion.employee_payroll; 

quit;



/* 
Create a report that displays Employee_ID, Level, Salary, and Salary_Range using the orion.Staff table. Level and Salary_Range are two new columns in the report.
 */

Proc sql; 

select 

		employee_Id, salary,  
		
		case scan(Job_title, -1,' ')
		when 'Manager' then 'Manager'
		when 'Director' then 'Director'
		when 'President' then 'Executive'
		when 'Officer' then 'Executive'
		else 'N/A'
		end as level,
		
		case when calculated level = 'Manager' and salary < 52000 
		then 'low'
		when calculated level = 'Manager' and 52000 <= salary < 72000 
		then 'medium'
		when calculated level = 'Manager' and salary >= 72000 
		then 'high'
		
		when calculated level = 'Director' and salary < 108000
		then 'low'
		when calculated level = 'Director' and 108000 <= salary < 135000
		then 'medium'
		when calculated level = 'Director' and salary >= 135000 
		then 'high'
		
		when calculated level = 'Executive' and salary < 240000
		then 'low'
		when calculated level = 'Executive' and 240000 <= salary < 300000
		then 'medium'
		when calculated level = 'Executive' and salary >= 300000 
		then 'high'
		
		end as Salary_Ranges

from orion.staff 

Where calculated level NE 'N/A' 

;
quit;


/* 
Write a query that generates a report that displays the cities where the Orion Star employees reside. The report should do the following:
•	include the title Cities Where Employees Live
•	display one unique row per City
•	use the orion.Employee_Addresses table */

Proc sql; 

select 

	unique city
	
from orion.employee_addresses;

quit;



/* Write a query that generates a report that displays Orion Star employees whose total charitable contributions exceed $90.00. The report should have the following characteristics:
•	include the title Donations Exceeding $90.00 display Employee_ID, Recipients, and the new column Total that represents the total charitable contribution for each employee over the four quarters
•	use the orion.Employee_donations table
•	include only employees whose charitable contribution Total for all four quarters exceeds $90.00


*/

Title Donations Exceeding $90.00;
proc sql; 

select 

		employee_ID 
		,recipients
		,sum(Qtr1, Qtr2, Qtr3, Qtr4) as total

from orion.Employee_donations

where calculated total > 90.00

;

quit;
