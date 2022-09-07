select InvoiceNumber, InvoiceDate, InvoiceTotal
    From Invoices
    WHERE VendorID IN (
        SELECT VendorID 
            FROM Vendors
            WHERE VendorState = 'CA'
    ) 
    Order by InvoiceTotal;

    Select InvoiceNumber, InvoiceDate, InvoiceTotal
        From Invoices
        Join Vendors 
            on Invoices.vendorId = Vendors.VendorID
        where vendors.vendorstate = 'CA'
        Order by InvoiceDate;