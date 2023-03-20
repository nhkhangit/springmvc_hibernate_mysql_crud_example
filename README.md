# springmvc_hibernate_mysql_crud
> Maven, JDK 1.7, Server using for this project Tomcat 8.5

Tomcat 8, Link: https://tomcat.apache.org/download-80.cgi

## How to clone and run project
##### 1. Clone
```
  git clone https://github.com/nguyenhoangkhangithutech/springmvc_hibernate_mysql_crud.git
```

##### 2. Edit file config in the WEB-INF/config_servlet_db_hibernate.xml
```
        <property name="jdbcUrl" value="jdbc:mysql://localhost:3306/<database_name>?useSSL=false" />
        <property name="user" value="<username>" />
        <property name="password" value="<pass>" />
```
##### 3. sql
```sql
  CREATE TABLE customer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255)
);

```
