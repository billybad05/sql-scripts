Write an INSERT statement that adds a row to the InvoiceCopy table with the following values: 
VendorID: 32 InvoiceTotal: $434.58 TermsID: 2 InvoiceNumber: AX-014-027 PaymentTotal: $0.00 
InvoiceDueDate: 05/8/2020 InvoiceDate: 4/21/2020 CreditTotal: $0.00 PaymentDate: null

INSERT InvoiceCopy
(VendorId, Invoicetotal, TermsID, InvoiceNumber, PaymentTotal, Invoiceduedate, Invoicedate, Credittotal, PaymentDate)
VALUES (32, 434.58, 2,'AX-014-027', 0, '2012-05-08', '2012-4- 21', 0, NULL);