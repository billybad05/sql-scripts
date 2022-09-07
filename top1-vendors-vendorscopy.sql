select *
    into VendorsCopy
    from Vendors;

Select top 1 * from Vendors
select top 1 * from VendorsCopy;