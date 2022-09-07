Write an UPDATE statement that modifies the VendorCopy table. 
Change the default account number to 403 for each vendor 
that has a default account number of 400

update vendorscopy set
	 DefaultAccountNo = 403
	where defaultaccountno = 400;

