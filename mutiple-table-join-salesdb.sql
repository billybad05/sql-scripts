select o.Id, o.[Description], o.Total, o.[Status], l.Quantity, p.Price, l.Quantity * p.Price LineTotal
    from Orders o 
    join Orderlines l 
        on o.id = l.OrderId
    join Products p
        on l.ProductId = p.Id
    where o.Id = 7