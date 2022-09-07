SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendorstruecopy](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [varchar](50) NOT NULL,
	[VendorAddress1] [varchar](50) NULL,
	[VendorAddress2] [varchar](50) NULL,
	[VendorCity] [varchar](50) NOT NULL,
	[VendorState] [char](2) NOT NULL,
	[VendorZipCode] [varchar](20) NOT NULL,
	[VendorPhone] [varchar](50) NULL,
	[VendorContactLName] [varchar](50) NULL,
	[VendorContactFName] [varchar](50) NULL,
	[DefaultTermsID] [int] NOT NULL,
	[DefaultAccountNo] [int] NOT NULL,
 CONSTRAINT [PK_Vendorstruecopy] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vendorstruecopy] ADD  CONSTRAINT [DF_Vendorstruecopy_TermsID]  DEFAULT ((3)) FOR [DefaultTermsID]
GO
ALTER TABLE [dbo].[Vendorstruecopy] ADD  CONSTRAINT [DF_Vendorstruecopy_AccountNo]  DEFAULT ((570)) FOR [DefaultAccountNo]
GO
ALTER TABLE [dbo].[Vendorstruecopy]  WITH NOCHECK ADD  CONSTRAINT [FK_Vendorstruecopy_GLAccounts] FOREIGN KEY([DefaultAccountNo])
REFERENCES [dbo].[GLAccounts] ([AccountNo])
GO
ALTER TABLE [dbo].[Vendorstruecopy] CHECK CONSTRAINT [FK_Vendorstruecopy_GLAccounts]
GO
ALTER TABLE [dbo].[Vendorstruecopy]  WITH NOCHECK ADD  CONSTRAINT [FK_Vendorstruecopy_Terms] FOREIGN KEY([DefaultTermsID])
REFERENCES [dbo].[Terms] ([TermsID])
GO
ALTER TABLE [dbo].[Vendorstruecopy] CHECK CONSTRAINT [FK_Vendorstruecopy_Terms]
GO
--Drop Table VendorsTrueCopy;