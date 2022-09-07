select InvoiceTotal,
	InvoiceTotal / 10 as '10%',
	InvoiceTotal * 1.1 as 'Plus 10%'
From Invoices
where  InvoiceTotal - PaymentTotal - CreditTotal > 1000
Order by Invoicetotal Desc;