 Write an INSERT statement that adds a row to the VendorCopy table for 
 each non-California vendor in the Vendors table. 
 (This will result in duplicate vendors in the VendorCopy table.)

 Select count(*) From Vendorscopy

INSERT VendorsCopy
	(VendorName, VendorAddress1, VendorAddress2,
	VendorCity, VendorState, VendorZipCode,
	VendorPhone, VendorContactLName, VendorContactFName,
	DefaultTermsID, DefaultAccountNo)
select VendorName, VendorAddress1, VendorAddress2,
	VendorCity, VendorState, VendorZipCode,
	VendorPhone, VendorContactLName, VendorContactFName,
	DefaultTermsID, DefaultAccountNo
	from vendorscopy
	where vendorstate != 'CA';