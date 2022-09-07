select InvoiceNumber, InvoiceTotal
    from Invoices
WHERE paymenttotal > (
    SELECT AVG(paymenttotal)
    FROM invoices
    WHERE paymenttotal > 0
    )

select InvoiceNumber, InvoiceTotal
    From Invoices
    where PaymentTotal > (
Select AVG(PaymentTotal)
    from Invoices
    where Invoicetotal- (paymentTotal + Credittotal) = 0
    )