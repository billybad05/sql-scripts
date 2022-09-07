select VendorName as Vendor,
		InvoiceDate as 'Date',
		InvoiceNumber as Number,
		InvoiceSequence as #,
		InvoiceLineItemAmount as LineItem
	From Vendors v join Invoices i
	on v.VendorID = i.VendorID
	JOIN InvoiceLineItems AS li
ON i.InvoiceID = li.InvoiceID
ORDER BY Vendor, Date, Number, '#';