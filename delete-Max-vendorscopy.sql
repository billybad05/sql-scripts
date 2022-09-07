delete vendorscopy
	where vendorID = (
	select vendorID
		from vendorscopy
		where vendorname like 'Max%')