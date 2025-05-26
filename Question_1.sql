/*
This is a multi-line comment.
You can write notes or explanations here.
*/
-- This is a single-line comment


------------USER

CREATE USER ipl_user WITH PASSWORD '******';
--- Replate ****** with a Strong Password


------------ DATABASE

CREATE DATABASE ipl_db OWNER ipl_user;


------------- Permissions


GRANT ALL PRIVILEGES ON DATABASE ipl_db TO ipl_user;



---------- User Name change 

ALTER ROLE ipl_user RENAME TO balaji_user;




/* Optional: Grant More (if needed)
If you want ipl_user to create new databases or roles (usually not needed for a project like this), you can manually add attributes:

Allow creating databases: */

----sql

Copy
Edit
ALTER ROLE ipl_user CREATEDB;
Allow creating roles:

---sql
Copy
Edit
ALTER ROLE ipl_user CREATEROLE;

sql
Copy
Edit
ALTER ROLE ipl_user SUPERUSER;