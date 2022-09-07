select invoicedate, count(*) as invoiceQty, sum(invoicetotal) as invoicesum
	from invoices
	group by invoicedate
	having invoicedate between '2020-01-01' and '2020-01-31'
		and sum(invoicetotal) > 100
		and count(*) > 1
	order by invoicedate desc;