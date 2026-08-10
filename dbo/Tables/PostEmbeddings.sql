CREATE TABLE [dbo].[PostEmbeddings]
(
    [EmbeddingId] BIGINT IDENTITY(1,1) NOT NULL,
    [PostId] INT NOT NULL,
    [ModelName] VARCHAR(100) NOT NULL,
    [ContentHash] BINARY(32) NOT NULL,
    [Embedding] VECTOR(1024) NOT NULL,
    [CreatedAt] DATETIME2(3) NOT NULL
        CONSTRAINT [DF_PostEmbeddings_CreatedAt]
        DEFAULT SYSUTCDATETIME(),

    CONSTRAINT [PK_PostEmbeddings]
        PRIMARY KEY CLUSTERED ([EmbeddingId]),

    CONSTRAINT [FK_PostEmbeddings_Posts]
        FOREIGN KEY ([PostId])
        REFERENCES [dbo].[Posts]([Id])
);
GO

CREATE UNIQUE INDEX [UX_PostEmbeddings_Post_Model]
ON [dbo].[PostEmbeddings] ([PostId], [ModelName]);
GO