-- 查看oracle版本
select * from product_component_version;

-- select 1 from dual;

-- 删除用户以及下面的objects
-- DROP USER hr CASCADE;

-- 查看数据库列表
select username as schema_name from sys.all_users order by username;

-- sqlplus
-- sqlplus sys/123456 as sysdba
-- sqlplus sys/123456@//localhost:1521/XE as sysdba

-- 创建临时表空间
CREATE TEMPORARY tablespace my_temp tempfile '/u01/app/oracle/oradata/XE/my_temp.dbf' SIZE 50m autoextend ON NEXT 50m maxsize 20480m extent management LOCAL;

-- 创建数据表空间
CREATE tablespace my_data logging datafile '/u01/app/oracle/oradata/XE/my_data.dbf' SIZE 50m autoextend ON NEXT 50m maxsize 20480m extent management LOCAL;

-- create user kms15 identified by 123456 default tablespace my_data temporary tablespace my_temp;
-- grant CONNECT,resource,dba to kms15;

-- create user kms16 identified by 123456 default tablespace my_data temporary tablespace my_temp;
-- grant CONNECT,resource,dba to kms16;