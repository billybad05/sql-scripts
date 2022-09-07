create or alter procedure InvoicesByDateRange 
    @MinDate varchar(30) = null,
    @MaxDate varchar(30) = NULL
AS
    Declare @MinInvoiceDate varchar(20) = '01/01/1900'
    if @Mindate is NULL
        set @MinDate = @MinInvoiceDate;
    if @MaxDate is NULL
        set @MaxDate = Getdate()
    select *
        From Invoices
        where InvoiceDate between @MinDate and @MaxDate
        Order by InvoiceDate;
GO

Exec InvoicesByDateRange @MaxDate = '1/31/2020', @MinDate = '1/1/2020';