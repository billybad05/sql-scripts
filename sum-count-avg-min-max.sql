select sum (InvoiceTotal) as total,
        count(*) as count,
		avg (InvoiceTotal) as Average,
		min (invoicetotal) as min,
		max (invoicetotal) as max
from Invoices
