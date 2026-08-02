CREATE TABLE [dbo].[PostTypes] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Type] NVARCHAR (50) NOT NULL
);
GO

ALTER TABLE [dbo].[PostTypes]
    ADD CONSTRAINT [PK_PostTypes__Id] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

