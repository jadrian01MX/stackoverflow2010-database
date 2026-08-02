CREATE TABLE [dbo].[PostLinks] (
    [Id]            INT      IDENTITY (1, 1) NOT NULL,
    [CreationDate]  DATETIME NOT NULL,
    [PostId]        INT      NOT NULL,
    [RelatedPostId] INT      NOT NULL,
    [LinkTypeId]    INT      NOT NULL
);
GO

ALTER TABLE [dbo].[PostLinks]
    ADD CONSTRAINT [PK_PostLinks__Id] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

