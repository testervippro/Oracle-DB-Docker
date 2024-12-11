# Oracle-DB-Fast-Setup

A quick and easy guide to setting up Oracle Database using Docker.

---

## **Prerequisites**

1. **Install Docker Desktop**  
   - Download and install Docker Desktop from [Docker's official website](https://www.docker.com/products/docker-desktop).
   - Ensure Docker Desktop is configured to use WSL 2.


# Oracle 19c Docker Container Setup

This guide outlines the steps to pull, run, and connect to an Oracle 19c database using Docker.

---

## **Step 1: Pull the Oracle 19c Docker Image**

Run the following command in PowerShell to pull the Oracle 19c image from Docker Hub:

```powershell
docker pull cuxuanthoai/oracle-19c:customized

Copy script in run.ps1 and run it
# Oracle Container Setup

The container is successfully running when you see output similar to this:

---

![image](https://github.com/user-attachments/assets/cab922ae-5df1-4aff-be7b-b3d7a02e7edb)

![image](https://github.com/user-attachments/assets/56098361-9542-46e1-aa3c-7b052121e8f4)

---

### Once the container is running, use SQL*Plus to connect to the Oracle database:

- **Username**: HR  
- **Password**: hrpass  

Run the following command to connect to the Oracle database and execute the `hr.sql` script:

```bash
Use powershell
docker exec -it oracle-19c bash -c "\
sqlplus / as sysdba <<EOF
-- Switch to HR user
CONNECT hr/hrpass@localhost:1521/orcl;
-- Execute the first SQL script
@/opt/oracle/db.sql;
EXIT;
EOF"

Note 
# Deleting All Data for HR User in Oracle Database

## SQL Script to Delete All Data for HR User

```sql
BEGIN
   FOR rec IN (SELECT SID, SERIAL# FROM V$SESSION WHERE USERNAME = 'HR') LOOP
      EXECUTE IMMEDIATE 'ALTER SYSTEM KILL SESSION ''' || rec.SID || ',' || rec.SERIAL# || ''' IMMEDIATE';
   END LOOP;
END;
DROP USER HR CASCADE;


. **Configure WSL 2**  
   Create or edit the `.wslconfig` file in your user directory (`C:\Users\<YourUsername>\`) to optimize WSL 2 resources.

   ### **.wslconfig**
   ```ini
   [wsl2]
   memory=2GB   # Limits VM memory in WSL 2 up to 2GB
   processors=2 # Makes the WSL 2 VM use two virtual processors











