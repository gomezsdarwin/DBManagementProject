cREATE TABLE EventPlan (
  planNo VARCHAR2(8) NOT NULL,
  eventNo VARCHAR2(8) NOT NULL,
  empNo VARCHAR2(8),
  workDate DATE NOT NULL,
  notes VARCHAR2(50),
  activity VARCHAR2(10) NOT NULL,
  CONSTRAINT EventPlanPK PRIMARY KEY (planNo),
  CONSTRAINT EventRequestFK FOREIGN KEY (eventNo) REFERENCES EventRequest(evntNo) on DELETE CASCADE,
  CONSTRAINT EmployeeFK FOREIGN KEY (empNo) REFERENCES Employee(empNo)
);

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P100', 'E100', 'E102', '10/25/2009', 'Standard operation', 'Operation');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P101', 'E104', 'E100', '12/3/2009', 'Watch for gate crashers', 'Operation');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P102', 'E105', 'E102', '12/5/2009', 'Standard operation', 'Operation');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P103', 'E106', NULL, '12/12/2009', 'Watch for seat switching', 'Operation');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P104', 'E101', 'E101', '10/26/2009', 'Standard cleanup', 'Cleanup');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P105', 'E100', 'E101', '10/25/2009', 'Light cleanup', 'Cleanup');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P199', 'E102', 'E101', '12/10/2009', 'ABC', 'Operation');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P299', 'E101', 'E101', '10/26/2009', NULL, 'Operation');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P349', 'E106', 'E101', '12/12/2009', NULL, 'Cleanup');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P85', 'E100', 'E102', '10/25/2009', 'Standard operation', 'Setup');

INSERT INTO EventPlan (planNo, eventNo, empNo, workDate, notes, activity)
VALUES ('P95', 'E101', 'E102', '10/26/2009', 'Extra security', 'Setup');