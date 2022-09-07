with CAVendors AS (
    select * 
        From vendors
        where vendorstate = 'CA'
)
select * 
    From Invoices
    join CAvendors
        on Invoices.VendorID = CAvendors.VendorID;
