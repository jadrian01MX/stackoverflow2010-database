CREATE TABLE [dbo].[ChangeTrackingCheckpoint]
(
    [ConsumerName]          VARCHAR (100) NOT NULL,
    [LastProcessedVersion]  BIGINT       NOT NULL,
    [UpdatedAt]              DATETIME2 (7) NOT NULL
        CONSTRAINT [DF_ChangeTrackingCheckpoint_UpdatedAt]
        DEFAULT (SYSUTCDATETIME()),

    CONSTRAINT [PK_ChangeTrackingCheckpoint]
        PRIMARY KEY CLUSTERED ([ConsumerName] ASC)
);
GO