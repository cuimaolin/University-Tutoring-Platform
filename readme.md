# 创建student表

```sql
CREATE TABLE Student(  
    id int(11) NOT NULL AUTO_INCREMENT,  
    nick varchar(255) NOT NULL,  
    password varchar(255) NOT NULL,
    name varchar(255) NOT NULL,  
    sex varchar(255) NOT NULL,  
    age int(11) NOT NULL,    
    address varchar(255) NOT NULL,  
    tele varchar(255) NOT NULL,  
    grade varchar(255) NOT NULL,
    subjects varchar(255) NOT NULL,  
    salary varchar(255) NOT NULL,  
    releaseDate varchar(255) NOT NULL,  
    demo varchar(255) NOT NULL,
    PRIMARY KEY (id)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
```

# 创建teacher表

```sql
CREATE TABLE Teacher(  
    id int(11) NOT NULL AUTO_INCREMENT,  
    nick varchar(255) NOT NULL,  
    password varchar(255) NOT NULL,
    name varchar(255) NOT NULL,  
    sex varchar(255) NOT NULL,  
    age int(11) NOT NULL,  
    studentID varchar(255) NOT NULL,  
    tele varchar(255) NOT NULL,  
    grade varchar(255) NOT NULL,  
    subjects varchar(255) NOT NULL,   
    salary varchar(255) NOT NULL,  
    releaseDate varchar(255) NOT NULL,  
    demo varchar(255) NOT NULL,
    PRIMARY KEY (id)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
```

