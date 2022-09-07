Select InvoiceNumber, InvoiceDate, InvoiceTotal,
        Invoicetotal - Paymenttotal - Credittotal as BalanceDue
    From Invoices
    Where Invoicetotal - Paymenttotal - Credittotal > 0
        and Invoicetotal - paymenttotal - credittotal < 
            (select avg (invoicetotal - paymenttotal - credittotal)
                from Invoices
                where invoicetotal - paymenttotal - credittotal > 0)
    order by Invoicetotal desc;