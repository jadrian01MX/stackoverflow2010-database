CREATE TABLE [dbo].[Votes] (
    [Id]           INT      IDENTITY (1, 1) NOT NULL,
    [PostId]       INT      NOT NULL,
    [UserId]       INT      NULL,
    [BountyAmount] INT      NULL,
    [VoteTypeId]   INT      NOT NULL,
    [CreationDate] DATETIME NOT NULL
);
GO

ALTER TABLE [dbo].[Votes]
    ADD CONSTRAINT [PK_Votes__Id] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

