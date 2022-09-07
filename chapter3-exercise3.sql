SELECT concat (VendorContactLName,  ', ', VendorContactFName) AS 'Full Name'
FROM Vendors
ORDER BY VendorContactLName, VendorContactFName;