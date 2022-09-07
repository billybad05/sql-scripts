select *
from Invoices
Where ((InvoiceTotal - PaymentTotal - CreditTotal <= 0) and PaymentDate IS NULL);