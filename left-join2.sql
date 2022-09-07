select VendorName, InvoiceNumber
	From Vendors v left join Invoices i
		on i.VendorID = v.VendorID