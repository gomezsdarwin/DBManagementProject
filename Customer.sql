CREATE TABLE Customer (
  custNo VARCHAR2(8) NOT NULL,
  custName VARCHAR2(30) NOT NULL,
  address VARCHAR2(30)NOT NULL,
  internal char(1) NOT NULL DEFAULT 'Y',
  contact VARCHAR2(30) NOT NULL,
  phone VARCHAR2(20) NOT NULL,
  city VARCHAR2(20) NOT NULL,
  state VARCHAR2(2) NOT NULL,
  zip VARCHAR2(10) NOT NULL DEFAULT '80217',
  CONSTRAINT CustomerPK PRIMARY key (custNo)
);

INSERT INTO Customer (custNo, custName, address, internal, contact, phone, city, state, zip) VALUES
  ('C100', 'Football', 'Box 352200', '1', 'Mary Manager', '6857100', 'Boulder', 'CO', '80309');

INSERT INTO Customer (custNo, custName, address, internal, contact, phone, city, state, zip) VALUES
  ('C101', 'Men''s Basketball', 'Box 352400', '1', 'Sally Supervisor', '5431700', 'Boulder', 'CO', '80309');

INSERT INTO Customer (custNo, custName, address, internal, contact, phone, city, state, zip) VALUES
  ('C103', 'Baseball', 'Box 352020', '1', 'Bill Baseball', '5431234', 'Boulder', 'CO', '80309');

INSERT INTO Customer (custNo, custName, address, internal, contact, phone, city, state, zip) VALUES
  ('C104', 'Women''s Softball', 'Box 351200', '1', 'Sue Softball', '5434321', 'Boulder', 'CO', '80309');

INSERT INTO Customer (custNo, custName, address, internal, contact, phone, city, state, zip) VALUES
  ('C105', 'High School Football', '123 AnyStreet', '0', 'Coach Bob', '4441234', 'Louisville', 'CO', '80027');