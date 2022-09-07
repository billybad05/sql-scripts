select AccountDescription, Count(*) as LineItemCount, sum(InvoiceLineItemAmount) as LineItemSum
from InvoiceLineItems i join GLAccounts g
on i.AccountNo = g.AccountNo
Group by AccountDescription
having count(*) > 1
order by Lineitemcount desc;