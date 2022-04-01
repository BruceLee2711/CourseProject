USE Appointment

GO

CREATE TABLE Clients
	(
	Id INT PRIMARY KEY IDENTITY(1,1),
	LastName VARCHAR(20),
	FirstName VARCHAR(20),
	MiddleName VARCHAR(20),
	DateOfBirth DATE,
	PhoneNumber VARCHAR(15)
	)
GO

CREATE TABLE Recordings
	(
	Id INT PRIMARY KEY IDENTITY(1,1),
	ClientId INT NOT NULL FOREIGN KEY REFERENCES Clients(Id),
	DateOfReception DATETIME
	)

INSERT INTO [dbo].[Clients]
           ([LastName]
           ,[FirstName]
           ,[MiddleName]
           ,[DateOfBirth]
           ,[PhoneNumber])
     VALUES
           ('Анитон','Ан','тон','2011-04-15','+789785675')
GO


	insert into Recordings Values(1)

	SELECT Recordings.Id, Clients.FirstName, Clients.LastName, Clients.MiddleName,Clients.PhoneNumber FROM Recordings LEFT JOIN Clients ON Recordings.ClientId = Clients.Id;
	 
	 select * from Recordings
	 select * from Clients


	drop table Recordings
	drop table Clients