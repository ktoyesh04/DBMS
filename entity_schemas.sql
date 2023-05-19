CREATE TABLE Admin(
    aid varchar(10) PRIMARY KEY,
    aname varchar(20) NOT NULL,
    loginname varchar(10) UNIQUE,
    password varchar(8) NOT NULL
);

CREATE TABLE Student(
    sid varchar(10),
    aid varchar(10) NOT NULL,
    sname varchar(20) NOT NULL,
    gender varchar(1) NOT NULL,
    mail varchar(30) UNIQUE,
    phone int UNIQUE,
    dob date NOT NULL,
    address varchar(30) NOT NULL, 
    CONSTRAINT s_pk PRIMARY KEY(sid),
    CONSTRAINT s_fk FOREIGN KEY(aid) REFERENCES Admin(aid)
);

CREATE TABLE Course(
    cid varchar(5) ,
    aid varchar(10) NOT NULL,
    cname varchar(20) NOT NULL,
    cfee int NOT NULL,
    duration_in_weeks int NOT NULL,
    CONSTRAINT c_pk PRIMARY KEY(cid),
    CONSTRAINT c_fk FOREIGN KEY(aid) REFERENCES Admin(aid)
);

CREATE TABLE Faculty(
    fid varchar(10),
    aid varchar(10) NOT NULL,
    fname varchar(20) NOT NULL,
    position varchar(20) NOT NULL,
    CONSTRAINT f_pk PRIMARY KEY(fid),
    CONSTRAINT f_fk FOREIGN KEY(aid) REFERENCES Admin(aid)
);
