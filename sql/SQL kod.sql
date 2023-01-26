-- Table creation

CREATE TABLE Newsletter (
	newsletterID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	fullName NVARCHAR(100) NOT NULL,
	email NVARCHAR(50) NOT NULL,
	comment NVARCHAR(100),
)

CREATE TABLE CreateYourTeam (
	teamID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	teamName NVARCHAR(50) NOT NULL,
)

CREATE TABLE Players (
	playerID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	firstName NVARCHAR(50) NOT NULL,
	lastName NVARCHAR(50) NOT NULL,
	teamID INT NOT NULL FOREIGN KEY REFERENCES CreateYourTeam(teamID),
)

CREATE TABLE Coaches (
	coachID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	firstName NVARCHAR(50) NOT NULL,
	lastName NVARCHAR(50) NOT NULL,
)

-- Select *

SELECT * FROM Newsletter

SELECT * FROM CreateYourTeam

SELECT * FROM Players

SELECT * FROM Coaches

-- Drop tables

DROP TABLE Newsletter

DROP TABLE CreateYourTeam

DROP TABLE Players

DROP TABLE Coaches

-- Coach inserting

INSERT INTO Coaches (firstName, lastName) VALUES ('Darvin','Ham')
INSERT INTO Coaches (firstName, lastName) VALUES ('Tyronne','Lue')
INSERT INTO Coaches (firstName, lastName) VALUES ('Doc','River')
INSERT INTO Coaches (firstName, lastName) VALUES ('Stephen','Silas')
INSERT INTO Coaches (firstName, lastName) VALUES ('Steve','Nash')
INSERT INTO Coaches (firstName, lastName) VALUES ('Mike','Budenholzer')
INSERT INTO Coaches (firstName, lastName) VALUES ('Taylor','Jenkins')
INSERT INTO Coaches (firstName, lastName) VALUES ('Chauncey','Billups')
INSERT INTO Coaches (firstName, lastName) VALUES ('Jason','Kidd')
