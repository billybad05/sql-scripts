select InvoiceNumber, VendorName
	From Invoices i
	Join Vendors v
		on v.VendorID = i.VendorID