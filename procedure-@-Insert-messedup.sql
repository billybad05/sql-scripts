use PRS;
go
Create or Alter Procedure AddProduct
    @PartNbr varchar(30) = null,
    @Name varchar(30) = NULL,
    @Price decimal(9,2) = 10,
    @unit varchar(30) = 'each',
    @vendorsID int = NULL
as
    IF @PartNbr is NULL 
        return -1;
    If @Name is NULL
        return -2;
    If @Vendorscode is NULL
        return -3;

    Declare @VendorID int;
    select @VendorID = VendorsID
        From Vendors
        where code = @Vendorscode
    
    insert Products (PartNbr, Name, Price, Unit, VendorsId) VALUES
                    (@PartNbr, @Name, @Price, @unit, @VendorsID);
    return 0;
GO

Declare @rc int;
Exec @rc = Addproduct @PartNbr= 'Firestick', @Name= 'Fire stick', @Price= 75.00, @Unit= 'Each', @VendorsCode= 'FORAE';
Select @rc;