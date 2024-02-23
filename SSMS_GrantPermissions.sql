
-- Part 1
-- use master database and run this line only
CREATE LOGIN [user@CompanyDomain.com] FROM EXTERNAL PROVIDER;
 

-- Part 2 (option 1)
-- This grants owner permissions 
use LocalDatabaseName; --You can either run this line or manually switch to the local database
CREATE USER [user@CompanyDomain.com] FOR LOGIN [user@CompanyDomain.com]
ALTER ROLE db_owner ADD MEMBER [user@CompanyDomain.com] 


-- Part 2 (option 2)
-- This line grants permission to a specifc schema 
use LocalDatabaseName; --You can either run this line or manually switch to the local database
CREATE USER [user@CompanyDomain.com] FOR LOGIN [user@CompanyDomain.com]
grant select on schema:: GOLD to [user@CompanyDomain.com]




