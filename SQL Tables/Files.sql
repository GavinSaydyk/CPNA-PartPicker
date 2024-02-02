CREATE TABLE Parts (
	PartsID INT(20) NOT NULL AUTO_INCREMENT,
	CategoryID INT(20),
	PRIMARY KEY (PartsID),
	FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Manufacturer (
	ManufacturerID INT(20) NOT NULL AUTO_INCREMENT,
	ManufacturerName VARCHAR(30) NOT NULL,
	WebsiteURL VARCHAR(50),
	PRIMARY KEY (ManufacturerID)
);

CREATE TABLE Category (
	CategoryName VARCHAR(20) NOT NULL,
	CategoryID INT(20) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (CategoryID)
);

CREATE TABLE GPU (
	PartsID INT(20),
	CategoryID INT(20),
	PartName varchar(30) NOT NULL,
	ManufacturerID INT(20),
	MemorySize varchar(20) NOT NULL,
	MemoryType varchar(20) NOT NULL,
	ClockSpeed varchar(20) NOT NULL,
	Dimensions varchar(20) NOT NULL,
	PowerConsumption INT(20) NOT NULL,
	Socket varchar(30) NOT NULL,
	Ports varchar(30) NOT NULL,
	Weightg Int(20) NOT NULL,
	Price DECIMAL(20,2),
	FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
	FOREIGN KEY (PartsID) REFERENCES Parts(PartsID),
	FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID)
);

CREATE TABLE MotherBoard (
	PartsID INT(20),
	CategoryID INT(20),
	PartName varchar(30) NOT NULL,
	ManufacturerID INT(20),
	MemoryType varchar(20) NOT NULL,
	MemoryMax varchar(20) NOT NULL,
	BoardSize varchar(20) NOT NULL,
	CPUSocket varchar(20) NOT NULL,
	M2Slots int(4) NOT NULL,
	RamSlots int(4) NOT NULL,
	Ethernet BOOLEAN NOT NULL,
	USBSlots int(4) NOT NULL,
	Weightg int(20) NOT NULL,
	PowerConsumption int(20) NOT NULL,
	Price DECIMAL(20,2),
	FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
	FOREIGN KEY (PartsID) REFERENCES Parts(PartsID),
	FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID)
);
