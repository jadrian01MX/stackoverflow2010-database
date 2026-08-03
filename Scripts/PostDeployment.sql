IF NOT EXISTS (
    SELECT 1
    FROM sys.database_principals
    WHERE name = 'dacpac_deployer'
)
BEGIN
    CREATE ROLE [dacpac_deployer];
END
GO


IF NOT EXISTS (
    SELECT 1
    FROM sys.database_principals
    WHERE name = 'github-stackoverflow-database-deployment'
)
BEGIN
    CREATE USER [github-stackoverflow-database-deployment]
    FROM EXTERNAL PROVIDER;
END
GO


ALTER ROLE [dacpac_deployer]
ADD MEMBER [github-stackoverflow-database-deployment];
GO


GRANT CREATE TABLE TO [dacpac_deployer];
GRANT ALTER ANY SCHEMA TO [dacpac_deployer];

GRANT CREATE PROCEDURE TO [dacpac_deployer];
GRANT ALTER ANY PROCEDURE TO [dacpac_deployer];

GRANT CREATE FUNCTION TO [dacpac_deployer];
GRANT ALTER ANY FUNCTION TO [dacpac_deployer];

GRANT CREATE VIEW TO [dacpac_deployer];
GRANT ALTER ANY VIEW TO [dacpac_deployer];

GRANT CREATE TYPE TO [dacpac_deployer];

GRANT CREATE SCHEMA TO [dacpac_deployer];
GO