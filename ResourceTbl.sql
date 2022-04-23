CREATE TABLE ResourceTbl (
  resNo VARCHAR2(8) NOT NULL,
  resName VARCHAR2(30) NOT NULL,
  rate DECIMAL(8, 2) NOT NULL,
  CONSTRAINT ResourceTblPK PRIMARY KEY (resNo),
  CHECK (rate > 0)
);


INSERT INTO ResourceTbl (resNo, resName, rate) VALUES ('R100', 'attendant', '10.00');
INSERT INTO ResourceTbl (resNo, resName, rate) VALUES ('R101', 'police', '15.00');
INSERT INTO ResourceTbl (resNo, resName, rate) VALUES ('R102', 'usher', '10.00');
INSERT INTO ResourceTbl (resNo, resName, rate) VALUES ('R103', 'nurse', '20.00');
INSERT INTO ResourceTbl (resNo, resName, rate) VALUES ('R104', 'janitor', '15.00');
INSERT INTO ResourceTbl (resNo, resName, rate) VALUES ('R105', 'food service', '10.00');