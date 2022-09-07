SELECT DISTINCT VendorName 
    FROM Vendors JOIN Invoices
    ON Vendors.VendorID = Invoices.VendorID 
ORDER BY VendorName;

select distinct VendorName
    from vendors
WHERE VendorID IN (
    SELECT VendorID 
    FROM Invoices
)