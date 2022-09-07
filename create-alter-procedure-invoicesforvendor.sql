create or alter procedure InvoicesForVendor 
    @VendorName varchar(30) = '%'
as 
    Select VendorName, i.*
        from vendors v 
        join invoices i 
            on v.vendorid = i.VendorID
        where vendorname like @VendorName
        Order by VendorName; 
GO

exec InvoicesForVendor @VendorName = 'c%';