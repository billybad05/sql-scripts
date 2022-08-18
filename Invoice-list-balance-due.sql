select
	InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal,
	CreditTotal,
	InvoiceTotal - PaymentTotal - CreditTotal as BalanceDue
From Invoices
where InvoiceTotal - PaymentTotal - CreditTotal > 0
order by InvoiceDate;