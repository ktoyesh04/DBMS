CREATE TABLE enrolled(
  cid VARCHAR(5) NOT NULL,
  sid VARCHAR(10) NOT NULL,
  attendence FLOAT ,
  gpa FLOAT,
  CONSTRAINT e_pk PRIMARY KEY(cid, sid),
  CONSTRAINT e_fk_cid FOREIGN KEY(cid) REFERENCES course(cid),
  CONSTRAINT e_fk_sid FOREIGN KEY(sid) REFERENCES student(sid)
);

CREATE TABLE teaches(
	cid VARCHAR(5) NOT NULL,
  fid VARCHAR(10) NOT NULL,
  CONSTRAINT t_pk PRIMARY KEY(cid, fid),
  CONSTRAINT t_fk_cid FOREIGN KEY(cid) REFERENCES course(cid),
	CONSTRAINT t_fk_fid FOREIGN KEY(fid) REFERENCES faculty(fid)
);
