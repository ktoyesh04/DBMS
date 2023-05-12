CREATE TABLE Student(
	sid varchar(10) PRIMARY KEY,
    sname varchar(20) NOT NULL,
    gender varchar(1) NOT NULL,
    mail varchar(30) UNIQUE,
    phone int UNIQUE,
    dob date NOT NULL,
    address varchar(50) NOT NULL,
    gpa real,
    attendence real
);

CREATE TABLE Admin(
    a_id varchar(10) PRIMARY KEY,
	a_name varchar(20) NOT NULL,
    login_name varchar(10) UNIQUE,
    password varchar(8) NOT NULL
);

CREATE TABLE Course(
	cid varchar(5) ,
    cname varchar(20) NOT NULL,
    cfee int NOT NULL,
    duration_in_weeks int NOT NULL,
    CONSTRAINT c_pk PRIMARY KEY(cid)
);

CREATE TABLE Faculty(
	fid varchar(10),
    fname varchar(20) NOT NULL,
    position varchar(20) NOT NULL,
    CONSTRAINT f_pk PRIMARY KEY(fid)
);
