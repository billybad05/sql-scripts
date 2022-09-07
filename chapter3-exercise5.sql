SELECT InvoiceNumber AS Number,
InvoiceTotal AS Total,
PaymentTotal + CreditTotal AS Credits,
InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance
FROM Invoices
where InvoiceTotal >= 500 and InvoiceTotal <= 10000;