/*
==========================================================
Create Database and Schemas
==========================================================
Script Purpose:
	This script creates a new database named 'BaraaDataBarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze', 'silver', and 'gold'.

WARNING:
	Running this script will drop the entire 'BaraaDataWarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running this script.
*/

-- Create Database 'BaraaDataWarehouse'

USE master;
GO

-- Drop and recreate the 'BaraaDataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'BaraaDataWarehouse')
BEGIN
	ALTER DATABASE BaraaDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE BaraaDataWarehouse;
END;
GO

-- Create the 'BaraaDataWarehouse' database
CREATE DATABASE BaraaDataWarehouse;
GO

USE BaraaDataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
