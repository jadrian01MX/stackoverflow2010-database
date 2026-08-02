CREATE TABLE [dbo].[Badges] (
    [Id]     INT           IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (40) NOT NULL,
    [UserId] INT           NOT NULL,
    [Date]   DATETIME      NOT NULL
);
GO

ALTER TABLE [dbo].[Badges]
    ADD CONSTRAINT [PK_Badges__Id] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

