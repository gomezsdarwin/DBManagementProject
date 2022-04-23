CREATE TABLE Facility (
  facNo VARCHAR2(8) Not NULL,
  facName VARCHAR2(30) not NULL,
  CONSTRAINT FaceilityPK PRIMARy key (facNo)
);

INSERT INTO Facility (facNo, facName) VALUES ('F100', 'Football stadium');
INSERT INTO Facility (facNo, facName) VALUES ('F101', 'Basketball arena');
INSERT INTO Facility (facNo, facName) VALUES ('F102', 'Baseball field');
INSERT INTO Facility (facNo, facName) VALUES ('F103', 'Recreation room');