select Invoicenumber, InvoiceDate, Invoicetotatal
    from Invoices 
    where InvoiceTotal > (
        Select Avg (InvoiceTotal)
            from Invoices
    )
    Order by InvoiceTotal;