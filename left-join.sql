select *
	from terms t left join Invoices i
	on t.TermsID = i.TermsID
