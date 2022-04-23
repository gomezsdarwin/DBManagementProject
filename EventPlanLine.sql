CREATE TABLE EventPlanLine (
  planNo VARCHAR2(8) NOT NULL,
  lineNo VARCHAR2(8) NOT NULL,
  timeStart date NOT NULL,
  timeEnd date NOT NULL,
  numberFld VARCHAR2(8) NOT NULL,
  locNo VARCHAR2(8) NOT NULL,
  resNo VARCHAR2(8) NOT NULL,
  CONSTRAINT EventPlanLinePK PRIMARY KEY (planNo, lineNo),
  CONSTRAINT EventPlanFK FOREIGN KEY (planNo) REFERENCES EventPlan (planNo) on DELETE CASCADE,
  CONSTRAINT LocationFK FOREIGN KEY (locNo) REFERENCES Location(locNo),
  CONSTRAINT ResourceTblFK FOREIGN KEY (resNo) REFERENCES ResourceTbl (resNo),
  CHECK (timeStart < timeEnd)
);


INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P100','1','08:00:00','17:00:00','2','L100','R1000');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P100','2','12:00:00','17:00:00','2','L101','R101');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P100','3','07:00:00','16:30:00','1','L102','R102');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P100','4','18:00:00','22:00:00','2','L100','R102');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P101','1','18:00:00','20:00:00','2','L103','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P101','2','18:30:00','19:00:00','4','L105','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P101','3','19:00:00','20:00:00','2','L103','R103');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P102','1','18:00:00','19:00:00','2','L103','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P102','2','18:00:00','21:00:00','4','L105','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P102','3','19:00:00','22:00:00','2','L103','R103');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P103','1','18:00:00','21:00:00','2','L103','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P103','2','18:00:00','21:00:00','4','L105','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P103','3','19:00:00','22:00:00','2','L103','R103');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P104','1','18:00:00','22:00:00','4','L101','R104');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P104','2','18:00:00','22:00:00','4','L100','R104');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart , timeEnd, numberFld, locNo, resNo) VALUES 
	('P105','1','18:00:00','22:00:00','4','L101','R104');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P105','2','18:00:00','22:00:00','4','L100','R104');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P199','1','08:00:00','12:00:00','1','L100','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P349','1','12:00:00','15:30:00','1','L103','R100');

INSERT INTO EventPlanLine  (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P85','1','09:00:00','17:00:00','5','L100','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P85','2','08:00:00','17:00:00','2','L102','R101');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P85','3','10:00:00','15:00:00','3','L104','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P95','1','08:00:00','17:00:00','4','L100','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P95','2','09:00:00','17:00:00','4','L102','R101');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P95','3','10:00:00','15:00:00','4','L106','R100');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P95','4','13:00:00','17:00:00','2','L100','R103');

INSERT INTO EventPlanLine (planNo, lineNo, timeStart, timeEnd, numberFld, locNo, resNo) VALUES 
	('P95','5','13:00:00','17:00:00','2','L101','R104');