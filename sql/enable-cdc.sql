-- Use the database
USE theproject;
EXEC sys.sp_cdc_disable_db;

-- 1. Enable CDC on the database 'theproject'
-- This requires sysadmin fixed server role or db_owner fixed database role.
EXEC sys.sp_cdc_enable_db;


-- 2. Enable CDC on specific tables
-- Set @role_name to NULL for public access to change data, or specify a database role for security.
-- Set @supports_net_changes to 1 if you have a primary key/unique index and want net change functions.

-- Enable CDC for dbo.User
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'User',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.Blog
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Blog',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.BlogTag
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'BlogTag',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.Like
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Like',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.Save
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Save',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.Tag
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Tag',
    @role_name = NULL,
    @supports_net_changes = 1;



EXEC sys.sp_cdc_disable_db;

--enable cdc
-- Use the database
USE theproject;


-- 1. Enable CDC on the database 'theproject'
-- This requires sysadmin fixed server role or db_owner fixed database role.
EXEC sys.sp_cdc_enable_db;


-- 2. Enable CDC on specific tables
-- Set @role_name to NULL for public access to change data, or specify a database role for security.
-- Set @supports_net_changes to 1 if you have a primary key/unique index and want net change functions.

-- Enable CDC for dbo.User
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'User',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.Blog
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Blog',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.BlogTag
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'BlogTag',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.Like
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Like',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.Save
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Save',
    @role_name = NULL,
    @supports_net_changes = 1;


-- Enable CDC for dbo.Tag
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Tag',
    @role_name = NULL,
    @supports_net_changes = 1;

-- Or a simpler check for tables tracked by CDC
SELECT
    t.name AS TableName,
    SCHEMA_NAME(t.schema_id) AS SchemaName,
    CASE WHEN t.is_tracked_by_cdc = 1 THEN 'Enabled' ELSE 'Disabled' END AS CDCStatus
FROM
    sys.tables AS t
WHERE
    t.is_tracked_by_cdc = 1;
