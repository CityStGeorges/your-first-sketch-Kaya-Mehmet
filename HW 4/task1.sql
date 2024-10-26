CREATE TABLE petPet (
  petname VARCHAR (20),
  owner VARCHAR (45) NOT NULL,
  species VARCHAR (45) NOT NULL,
  gender ENUM ('M','F') NOT NULL,
  birth DATE NOT NULL,
  death DATE,
  PRIMARY KEY (petname)
);

CREATE TABLE petEvent (
  EventID INT AUTO_INCREMENT,
  petname VARCHAR (20),
  eventdate DATE NOT NULL,
  eventtype VARCHAR (15),
  remark VARCHAR (255),
  FOREIGN KEY petname REFERENCES petPet(petname),
  PRIMARY KEY (EventID)
);