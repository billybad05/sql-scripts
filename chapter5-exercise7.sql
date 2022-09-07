select VendorName, AccountDescription, Count(*) as LineItemCount, sum(InvoiceLineItemAmount) as LineItemSum
FROM Vendors JOIN Invoices
ON Vendors.VendorID = Invoices.VendorID
JOIN InvoiceLineItems
ON Invoices.InvoiceID = InvoiceLineItems.InvoiceID
JOIN GLAccounts
ON InvoiceLineItems.AccountNo = GLAccounts.AccountNo
Group by Vendorname, AccountDescription
Order by Vendorname, AccountDescription