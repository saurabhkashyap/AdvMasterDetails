USE [InventoryDB]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/18/17 7:01:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderDetails](
	[OrderDetialsID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Rate] [numeric](12, 2) NULL,
	[Quantity] [int] NOT NULL,
	[GUID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetialsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderMaster] FOREIGN KEY([OrderID])
REFERENCES [dbo].[OrderMaster] ([OrderID])
GO

ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderMaster]
GO

ALTER TABLE [OrderDetails]
DROP CONSTRAINT [FK_OrderDetails_OrderMaster];
