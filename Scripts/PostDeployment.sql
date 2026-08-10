IF NOT EXISTS
(
    SELECT 1
    FROM sys.change_tracking_tables
    WHERE object_id = OBJECT_ID(N'dbo.Posts')
)
BEGIN
    ALTER TABLE dbo.Posts
    ENABLE CHANGE_TRACKING
    WITH (TRACK_COLUMNS_UPDATED = ON);
END
GO