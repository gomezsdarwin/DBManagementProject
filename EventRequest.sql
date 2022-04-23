CREATE TABLE EventRequest (
  eventNo VARCHAR2(8) NOT NULL,
  dateHeld DATE NOT NULL,
  dateReq DATE NOT NULL DEFAULT SYSDATE,
  facNo VARCHAR2(8) NOT NULL,
  custNo VARCHAR2(8) NOT NULL,
  dateAuth DATE,
  status VARCHAR2(30) NOT NULL DEFAULT 'Pending',
  estCost DECIMAL(8, 2) NOT NULL,
  estAudience INTEGER NOT NULL,
  budNo VARCHAR2(30),
  CONSTRAINT EventRequestPK PRIMARY KEY (eventNo),
  CONSTRAINT FacilityFK FOREIGN KEY (facNo) REFERENCES Facility (facNo),
  CONSTRAINT CustomerFK FOREIGN KEY (custNo) REFERENCES Customer (custNo),
  CHECK (status IN('Pending','Denied','Approved') AND estAudience > 0),
  CHECK ((dateAuth > dateReq) or (dateAuth is NULL)) 
);

INSERT INTO EventRequest (eventNo, dateHeld, dateReq, facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES 
	('E100','10/25/2009','6/6/2009','F100','C100','6/8/2009','Approved','5000.00','80000','B1000');

INSERT INTO EventRequest (eventNo, dateHeld, dateReq, facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES 
	('E101','10/26/2009','7/28/2009','F100','C100', NULL,'Pending','5000.00','80000','B1000');

INSERT INTO EventRequest (eventNo, dateHeld, dateReq, facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES 
	('E102','9/14/2009','7/28/2009','F100','C100','7/31/2009','Approved','5000.00','80000','B1000');

INSERT INTO EventRequest (eventNo, dateHeld, dateReq, facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES 
	('E103','9/21/2009','7/28/2009','F100','C100','8/1/2009','Approved','5000.00','80000','B1000');

INSERT INTO EventRequest (eventNo, dateHeld, dateReq, facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES 
	('E104','12/3/2009','7/28/2009','F101','C101','7/31/2009','Approved','2000.00','12000','B1000');

INSERT INTO EventRequest (eventNo, dateHeld, dateReq, facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES 
	('E105','12/5/2009','7/28/2009','F101','C101','8/1/2009','Approved','2000.00','10000','B1000');

INSERT INTO EventRequest (eventNo, dateHeld, dateReq, facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES 
	('E106','12/12/2009','7/28/2009','F101','C101','7/31/2009','Approved','2000.00','10000','B1000');

INSERT INTO EventRequest (eventNo, dateHeld, dateReq, facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES 
	('E107','11/23/2009','7/28/2009','F100','C105','7/31/2009','Denied','10000.00','5000', NULL);