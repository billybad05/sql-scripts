select distinct vendorname,
    (select max(invoicedate) from Invoices
        where invoices.vendorid = vendors.vendorid) as latestinv
    from vendors
    order by latestinv desc;