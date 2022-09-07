select vendorname 
    from vendors
    where exists (
        Select VendorName from Invoices
            where vendors.vendorId = invoices.vendorId
        )
    order by VendorName

Select VendorName
    from Vendors
    where vendorID in (
        select VendorID
            from invoices
    )
    order by VendorName
    