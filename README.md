
# Oracle-DB-Docker

A setting up Oracle Database using Docker.

## **Prerequisites**

1. **Install Docker Desktop**  
   - Download and install Docker Desktop from [Docker's official website](https://www.docker.com/products/docker-desktop).
   -  Enable virtualization on Windows
  ![image](https://github.com/user-attachments/assets/7dcacad1-3370-4e10-8da8-243458ff7300)


## **Step 1: Pull the Oracle 19c Docker Image**

Run the following command in PowerShell to pull the Oracle 19c image from Docker Hub:

Step 1: Pull the Oracle 19c Docker Image
Run the following command in PowerShell to pull the Oracle 19c image from Docker Hub:

```bash
docker pull cuxuanthoai/oracle-19c:v2
```
## **Step 2 Oracle Container Setup**

Create folder before run container 

Win

C:\Users\ad\Documents\Oracle\oracle19c\oradata

Mac

/Users/mac/Documents/oracle/oracle19c/oradata

Run container on Win
```bash
docker run --name oracle-19c `
-p 1521:1521 `
--env ORACLE_SID=orcl `
--env ORACLE_PWD=123456789 `
--env ORACLE_MEM=2000 `
-v C:\Users\ad\Documents\Oracle\oracle19c\oradata:/opt/oracle/oradata `
cuxuanthoai/oracle19c:v2
```

Run container on Mac

```bash
docker run --name oracle-19c \
-p 1521:1521 \
--env ORACLE_SID=orcl \
--env ORACLE_PWD=123456789 \
--env ORACLE_MEM=2000 \
-v /Users/mac/Documents/oracle/oracle19c/oradata:/opt/oracle/oradata \
cuxuanthoai/oracle-19c:v2
```

After this time can use 

```bash
docker start oracle-19c
```
```bash
docker stop oracle-19c
```
```bash
docker restart oracle-19c
```





The container is successfully running when you see output similar to this:

---

![image](https://github.com/user-attachments/assets/cab922ae-5df1-4aff-be7b-b3d7a02e7edb)

![image](https://github.com/user-attachments/assets/56098361-9542-46e1-aa3c-7b052121e8f4)

---


## **Step 3 Run the following command sequence to connect create data to the Oracle database:** (open new tab cmd)

Run one cmd

```bash
docker exec -it oracle-19c bash -c "cd /opt/oracle/db-sample-schemas-main/human_resources && sqlplus sys/123456789@localhost:1521/orcl as sysdba @hr_install.sql"
```




### Once the finished use this account connect to the Oracle database :

- **Username**: HR  
- **Password**: hr  

### HR ERD 
Here's the ERD of the HR schema used:
![image](https://github.com/user-attachments/assets/2997cb01-ed69-49fe-82d4-5bc2302fa782)


Connect to HR

<img width="854" alt="Screen Shot 2025-01-02 at 00 50 06" src="https://github.com/user-attachments/assets/b8bae0a7-1ea7-4932-874e-8588e3f7ae7d" />


Test query from database 

![image](https://github.com/user-attachments/assets/56b66741-6115-466f-9521-da204c4d4ff5)


Link refer  detail more schema 


https://github.com/oracle-samples/db-sample-schemas

---


---

## **Configure WSL 2 ( because docker window consuming very memory)**  
Create or edit the `.wslconfig` file in your user directory (`C:\Users\<YourUsername>\`) to optimize WSL 2 resources.

### **Check current user**

```bash
echo %USERNAME%
```

### **.wslconfig**

```ini
[wsl2]
memory=2GB   # Limits VM memory in WSL 2 up to 2GB
processors=2 # Makes the WSL 2 VM use two virtual processors
```

```

