# Oracle-DB-fast-setup
Fast setup Oracle DB use docker
Install docker desktop 
create file .wslconfig  
[wsl2]
memory=2GB   # Limits VM memory in WSL 2 up to 2GB
processors=2  # Makes the WSL 2 VM use two virtual processors
![image](https://github.com/user-attachments/assets/224afca4-25fc-4979-86db-75fe0b6319ee)

# Pull image and run cmd use powershell
docker pull cuxuanthoai/oracle-19c

docker run --name oracle-19c ^
-p 1521:1521 ^
--env ORACLE_SID=orcl ^
--env ORACLE_PWD=123456789 ^
--env ORACLE_MEM=2000 ^
-v C:\Users\ad\Documents\Oracle\oracle-19c\oradata:/opt/oracle/oradata ^
cuxuanthoai/oracle-19c

Run until diplay it's mean run success
=================================================================


Connect to the Oracle Database Once the container is running, you can connect to the Oracle database using SQL*Plus.

Run the following command:

docker exec -it oracle-19c sqlplus sys/123456789@localhost:1521/orcl as sysdba This command connects you to the Oracle database as the SYS user.




