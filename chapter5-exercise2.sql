select top 10 vendorname, sum(paymenttotal) as PaymentSum
From Invoices i join vendors v
on i.vendorid = v.VendorID
group by VendorName 
order by sum(paymenttotal) desc;
