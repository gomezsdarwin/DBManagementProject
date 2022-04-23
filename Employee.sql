CREATE TABLE Employee (
  empNo VARCHAR2(8) NOT NULL,
  empName VARCHAR2(30) NOT NULL,
  department VARCHAR2(30) NOT NULL,
  email VARCHAR2(30) NOT NULL,
  phone VARCHAR2(20) NOT NULL,
  CONSTRAINT EmployeePK PRIMARY key (empNo)
);

INSERT INTO Employee (empNo, empName, department, email, phone) VALUES 
('E100','Chuck Coordinator','Administration','chuck@colorado.edu','3-1111');

INSERT INTO Employee (empNo, empName, department, email, phone) VALUES 
('E101','Mary Manager','Football','mary@colorado.edu','5-1111');

INSERT INTO Employee (empNo, empName, department, email, phone) VALUES 
('E102','Sally Supervisor','Planning','sally@colorado.edu','3-2222');

INSERT INTO Employee (empNo, empName, department, email, phone) VALUES 
('E103','Alan Administrator','Administration','alan@colorado.edu','3-3333');