CREATE TABLE [dbo].[Comments] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [CreationDate] DATETIME       NOT NULL,
    [PostId]       INT            NOT NULL,
    [Score]        INT            NULL,
    [Text]         NVARCHAR (700) NOT NULL,
    [UserId]       INT            NULL
);
GO

ALTER TABLE [dbo].[Comments]
    ADD CONSTRAINT [PK_Comments__Id] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

