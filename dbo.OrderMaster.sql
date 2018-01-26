CREATE TABLE [dbo].[OrderMaster] (
    [OrderID]     INT              IDENTITY (1, 1) NOT NULL,
    [OrderNo]     VARCHAR (50)     NOT NULL,
    [OrderDate]   DATETIME         NOT NULL,
    [Description] VARCHAR (300)    NULL,
    [GUID]        UNIQUEIDENTIFIER NULL,
    [FromDate] NVARCHAR(50) NOT NULL, 
    [ToDate] NVARCHAR(50) NOT NULL, 
    [Remark] NVARCHAR(50) NULL, 
    [Status] NVARCHAR(50) NULL, 
    PRIMARY KEY CLUSTERED ([OrderID] ASC)
);

