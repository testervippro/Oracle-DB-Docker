docker run --name oracle-19c `
-p 1521:1521 `
--env ORACLE_SID=orcl `
--env ORACLE_PWD=123456789 `
--env ORACLE_MEM=2000 `
-v C:\Users\ad\Documents\Oracle\oracle-19c\oradata:/opt/oracle/oradata `
cuxuanthoai/oracle-19c:customized
