--comment 1 line
/*
Write a SELECT statement that returns two columns from the 
GLAccounts table: AccountNo and AccountDescription. 
The result set should have one row for each account number 
that has never been used. Sort the final result set by AccountNo. 
Hint: Use an outer join to the InvoiceLineItems table
*/

select g.AccountNo, AccountDescription --, 1.*
	From GLAccounts g left join InvoiceLineItems l
			on g.AccountNo = l.accountno
where l.InvoiceID is null