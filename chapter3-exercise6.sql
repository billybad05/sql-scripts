SELECT concat (VendorContactLName,  ', ', VendorContactFName) AS 'Full Name'
FROM Vendors
where VendorContactLName like '[A-C,E]%'
ORDER BY VendorContactLName, VendorContactFName;