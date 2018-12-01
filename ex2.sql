CREATE TABLE prionser
  ( prisonerID		INT NOT NULL auto_increment,                              	  
    Fname			CHAR(30)  NOT NULL,
    Lname			CHAR(30)  NOT NULL,
    DOB				DATE not null,
    crime			CHAR(30),
    paroleDate  	DATE,
    behaviourRisk	INT not null,
    workType		CHAR(20),
    cellNum			INT not null,
    PRIMARY KEY	(prisonerID)
    );
    
CREATE TABLE cell
  ( cellNum				INT NOT NULL auto_increment,                              	  
    totalBeds			INT not null default 4,
    bedsAvailable		int not null,
    sectionID			int not null,
    PRIMARY KEY	(cellNum)
    );
    
CREATE TABLE section
  ( sectionID			INT NOT NULL auto_increment,                              	  
    riskLevel			char(20),
    cellCount			int not null,
    PRIMARY KEY	(sectionID)
    );
    
CREATE TABLE workAssignment
  ( workType			CHAR(20),                              	  
    supervisorsNeeded	INT,
    riskThreshold		int,
    workersNeeded		int,
    PRIMARY KEY	(workType)
    );
    
CREATE TABLE staff
  ( staffID			INT NOT NULL auto_increment,                              	  
    Fname			CHAR(30)  NOT NULL,
    Lname			CHAR(30)  NOT NULL,
    salary			int,
    workType		char(20),
    sectionID		int,
    riskClearance	int not null,
    PRIMARY KEY	(staffID)
    );