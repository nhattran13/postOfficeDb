-- Active: 1723105625906@@127.0.0.1@3306@postoffice
DROP DATABASE IF EXISTS postOffice;

CREATE DATABASE postOffice;

USE postOffice;


CREATE TABLE Staff(
    StaffID INT(100) NOT NULL PRIMARY KEY,
    lastName VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    Sex VARCHAR(255) NOT NULL,
    jobTitle VARCHAR(255) NOT NULL,
    PhoneNum VARCHAR(12) NOT NULL,
    Salary VARCHAR(255) NOT NULL,
    BranchNo VARCHAR(255) NOT NULL
);

CREATE TABLE Package(
    PackageID INT(100) NOT NULL PRIMARY KEY,
    PackageType VARCHAR(255) NOT NULL,
    PackageWeight DECIMAL(10,2) NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    TrackingID VARCHAR(255) NOT NULL
);

CREATE TABLE Customer(
    TrackingID VARCHAR(255) NOT NULL PRIMARY KEY,
    Sender VARCHAR(255) NOT NULL,
    Recepient VARCHAR(255) NOT NULL,
    Origin VARCHAR(255) NOT NULL,
    Destination VARCHAR(255) NOT NULL
);

CREATE TABLE Receipt(
    ReceiptID INT(100) NOT NULL PRIMARY KEY,
    Sender VARCHAR(255) NOT NULL,
    BranchNo VARCHAR(255) NOT NULL,
    CardNum VARCHAR(255) NOT NULL,
    Total DECIMAL(10,2) NOT NULL,
    TrackingID varchar(255) NOT NULL
);

CREATE TABLE Branch(
    BranchNo VARCHAR(255) NOT NULL PRIMARY KEY,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL,
    State VARCHAR(255) NOT NULL,
    Profits DECIMAL(10,2) NOT NULL
);

CREATE TABLE PackageType(
    TypeName VARCHAR(255) NOT NULL PRIMARY KEY,
    Dimension varchar(255) NOT NULL,
    MaxWeight DECIMAL(10,2) NOT NULL,
    ValuePerWeight DECIMAL(10,2) NOT NULL
);

CREATE TABLE Truck(
    TruckID INT(100) NOT NULL PRIMARY KEY,
    PlatNum VARCHAR(255) NOT NULL,
    DriverID INT(100),
    Origin VARCHAR(255) NOT NULL,
    IsAvailable BIT NOT NULL
);

/*staff entries: */


INSERT INTO Staff VALUES 
(1, 'Smith', 'John','Male', 'Manager', '111-111-1111', 25.00, 'Bn01'),
(2, 'James', 'John','Male', 'Customer Service', '111-111-1123', 15.00, 'Bn01'),
(3, 'Samantha', 'Sam','Female', 'Customer Service', '111-111-1121', 15.00, 'Bn01'),
(4, 'Luther', 'Luke','Male', 'Driver', '111-111-1114', 20.00, 'Bn01'),
(5, 'Nguyen', 'Jaon','Female', 'Manager', '111-111-1115', 25.00, 'Bn02'),
(6, 'Nguyen', 'Lan','Female', 'Driver', '111-111-1116', 25.00, 'Bn02'),
(7, 'Nguyen', 'Nat','Male', 'Driver', '111-111-1117', 25.00, 'Bn03');

/*receipt entries: */
INSERT INTO Receipt VALUES
(1, 'Janna James', 'Bn01', '1113-3333-3333-3333', 10.20, 'AAA1'),
(2, 'Janna James', 'Bn01', '1113-3333-3333-3333', 1.20, 'AAA2'),
(3, 'Janna James', 'Bn01', '1113-3333-3333-3333', 9.20, 'AAA4'),
(4, 'Janna James', 'Bn01', '1113-3333-3333-3333', 5.20, 'AAA5'),
(5, 'Jana James', 'Bn02', '1113-3333-3333-3133', 5.20, 'AAA6');

/*customer entries: */
INSERT INTO Customer VALUES 
('AAA8', 'Jin James', 'Ryan Jas', 'Houston', 'Dallas'),
('AAA1', 'Janna James', 'Ryan James', 'Dallas', 'Houston'),
('AAA9', 'Jana James', 'Ran Jams', 'Houston', 'Austin');

/*package entries: */
INSERT INTO Package VALUES 
(1, 'Normal', 5.00, 3.00, 'AAA1'),
(2, 'Priority', 1.00, 3.00, 'AAA9'),
(3, 'Express', 2.00, 10.00, 'AAA8'),
(4, 'Express', 3.00, 10.00, 'AAA1');

INSERT INTO Truck VALUES 
(1, 'LAX1', 4, 'Houston', 0),
(2, 'LAX2', 6, 'Houston', 1), 
(3, 'LAX3', 7, 'Dallas', 1);

INSERT INTO Branch VALUES
('Bn01', '1 Main St', 'Houston', 'TX', 200),
('Bn02', '25 Skewer Dr', 'Dallas', 'TX', 200),
('Bn03', '59 Lago Ln', 'Austin', 'TX', 300);

INSERT INTO PackageType VALUES
('Normal', '20x20x20',30,5),
('Priority', '10x10x10',10,3),
('Mail', '10x10x3',3,1),
('Express', '1x10x10',10,10);






