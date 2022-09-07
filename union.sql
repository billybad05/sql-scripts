select 'A' Category, *
	from invoices
	where Invoicetotal >= 10000
union
select 'B' Category, *
	from invoices
	where Invoicetotal < 10000 and Invoicetotal >=100
union
select 'C' Category, *
	from invoices
	where Invoicetotal < 100;