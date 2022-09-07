select InvoiceNumber, VendorName, Termsdescription
	From Invoices i
	Join Vendors v
		on v.VendorID = i.VendorID
	join Terms t
		on t.termsID = i.TermsID