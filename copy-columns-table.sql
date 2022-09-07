set Identity_Insert VendorsTrueCopy on;

Insert Into VendorsTrueCopy (VendorId, VendorName, VendorAddress1, VendorAddress2, 
            VendorCity, VendorState, VendorZipcode, VendorPHone,
            VendorContactLname, VendorContactFname,
            DefaultTermsID, DefaultAccountNo)
        select VendorId, VendorName, VendorAddress1, VendorAddress2, 
            VendorCity, VendorState, VendorZipcode, VendorPHone,
            VendorContactLname, VendorContactFname,
            DefaultTermsID, DefaultAccountNo
            from vendors;

Set Identity_Insert VendorsTrueCopy off;

select * from vendorstruecopy;