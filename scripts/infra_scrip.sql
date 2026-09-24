/*
 ==============================================
 Create Database and Schemas
 ==============================================
 Script Purpose:
    This script creates a new database name 'DataWareHouse' after checking if it not already exists.
    If the database exists, it is dropped and recreated.

    And the script sets up three schemas within database: 'bronze', 'silver', 'gold' layers (medallion architecture).

Warning:
    Running this script will drop the entire 'DataWareHouse' database if it exists.
    All data in this database will be permanently deleted. Proceed with caution and
    ensure you have proper backups before running this script.
 */

use master;
go

-- Check database... if it exists will be drop database
if exists (select 1 from sys.databases where name = 'DataWareHouse')
begin
    use master;
    -- set only one user can access... another user will be disconnect database (rollback)
    alter database DataWareHouse set single_user with rollback immediate;
    drop database DataWareHouse;
end
go

create database DataWareHouse;
go
use DataWareHouse;
go

create schema bronze;
go
create schema silver;
go
create schema gold;
go


