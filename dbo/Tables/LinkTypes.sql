CREATE TABLE [dbo].[LinkTypes] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Type] VARCHAR (50) NOT NULL
);
GO

ALTER TABLE [dbo].[LinkTypes]
    ADD CONSTRAINT [PK_LinkTypes__Id] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

