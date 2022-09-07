select 
	concat (VendorContactFName, ' ', VendorContactLName) as Fullname,
	concat (vendorContactLName, ', ', VendorContactFName) as LastFirst
from vendors;