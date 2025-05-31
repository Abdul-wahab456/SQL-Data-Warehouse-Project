/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse'
WARNING:
    ensure you have proper backups before running this script.
*/

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
-- Create Schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
