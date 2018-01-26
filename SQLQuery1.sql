USE [InventoryDB]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/29/17 2:06:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[FromDate] [nvarchar](20) NULL,
	[ToDate] [nvarchar](20) NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Rate] [numeric](8, 2) NULL,
	[Quantity] [int] NOT NULL,
	[Status] [nvarchar](20) NULL,
	[Remarks] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderDetails_1] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderMaster] FOREIGN KEY([OrderID])
REFERENCES [dbo].[OrderMaster] ([OrderID])
GO

ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderMaster]
GO