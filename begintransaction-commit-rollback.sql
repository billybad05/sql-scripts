begin Transaction;

delete vendorscopy	
	where vendorID = 1;

commit;

rollback;

select top 10 *
	from vendorscopy