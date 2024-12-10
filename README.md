# Oracle-DB-Fast-Setup

A quick and easy guide to setting up Oracle Database using Docker.

---

## **Prerequisites**

1. **Install Docker Desktop**  
   - Download and install Docker Desktop from [Docker's official website](https://www.docker.com/products/docker-desktop).
   - Ensure Docker Desktop is configured to use WSL 2.

2. **Configure WSL 2**  
   Create or edit the `.wslconfig` file in your user directory (`C:\Users\<YourUsername>\`) to optimize WSL 2 resources.

   ### **.wslconfig**
   ```ini
   [wsl2]
   memory=2GB   # Limits VM memory in WSL 2 up to 2GB
   processors=2 # Makes the WSL 2 VM use two virtual processors

![image](https://github.com/user-attachments/assets/224afca4-25fc-4979-86db-75fe0b6319ee)

# Oracle 19c Docker Container Setup

This guide outlines the steps to pull, run, and connect to an Oracle 19c database using Docker.

---

## **Step 1: Pull the Oracle 19c Docker Image**

Run the following command in PowerShell to pull the Oracle 19c image from Docker Hub:

```powershell
docker pull cuxuanthoai/oracle-19c

docker run --name oracle-19c ^
-p 1521:1521 ^
--env ORACLE_SID=orcl ^
--env ORACLE_PWD=123456789 ^
--env ORACLE_MEM=2000 ^
-v C:\Users\ad\Documents\Oracle\oracle-19c\oradata:/opt/oracle/oradata ^
cuxuanthoai/oracle-19c

The container is successfully running when you see output similar to this

=================================================================

Once the container is running, use SQL*Plus to connect to the Oracle database:
OR Sql developer connnect to sys user and paste to run
docker exec -it oracle-19c sqlplus sys/123456789@localhost:1521/orcl as sysdba




