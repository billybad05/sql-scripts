update VendorsCopy SET
    DefaultAccountNo = (select AccountNo from GlAccounts where accountdescription = 'Software'),
    DefaultTermsID = 1
    where Defaultaccountno = 100;

Select * From VendorsCopy
    where defaultaccountno in (100, 167);


