 Write an UPDATE statement that modifies the InvoiceCopy table. Change the PaymentDate to today’s date and the 
 PaymentTotal to the balance due for each invoice with a balance due. 
 Set today’s date with a literal date string, or use the GETDATE() function.

update invoicecopy set 
 invoicedate to getdate()
 PaymentTotal = InvoiceTotal - (paymenttotal + CreditTotal)
WHERE InvoiceTotal - (paymenttotal + Credittotal) > 0

 UPDATE invoicecopy SET 
 PaymentDate = GETDATE() , 
 UPDATE invoicecopy SET PaymentTotal = CreditTotal 
 WHERE (CreditTotal > 0)