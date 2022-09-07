select vendorstate, sum(invoicetotal) total, count(*) count
	from invoices i join vendors v 
	on v.vendorid = i.VendorID
--where invoicetotal > 20000
group by vendorstate
having sum(invoicetotal) > 20000
order by vendorstate;