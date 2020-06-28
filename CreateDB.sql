CREATE DATABASE QuanLyKho
GO

USE QuanLyKho
GO

CREATE TABLE Unit(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max),
)
GO

CREATE TABLE Suplier(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max),
	Address NVARCHAR(max),
	Phone NVARCHAR(20),
	Email NVARCHAR(200),
	MoreInfo NVARCHAR(max),
	ContactDate DATETIME
)
GO

CREATE TABLE Customer(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max),
	Address NVARCHAR(max),
	Phone NVARCHAR(20),
	Email NVARCHAR(200),
	MoreInfo NVARCHAR(max),
	ContactDate DATETIME
)
GO

CREATE TABLE Object(
	Id NVARCHAR(128) PRIMARY KEY,
	DisplayName NVARCHAR(max),
	IdUnit INT NOT NULL,
	IdSuplier INT NOT NULL,
	QRCode NVARCHAR(max),
	BarCode NVARCHAR(max)

	FOREIGN KEY(IdUnit) REFERENCES dbo.Unit(Id),
	FOREIGN KEY(IdSuplier) REFERENCES dbo.Suplier(Id)
)
GO

CREATE TABLE UserRole(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max)
)
GO

INSERT dbo.UserRole
(
    DisplayName
)
VALUES
(N'Admin' -- DisplayName - nvarchar(max)
    )
GO

INSERT dbo.UserRole
(
    DisplayName
)
VALUES
(N'Nhân viên' -- DisplayName - nvarchar(max)
    )
GO

CREATE TABLE Users(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max),
	UserName NVARCHAR(100),
	Password NVARCHAR(max),
	IdRole INT NOT NULL

	FOREIGN KEY(IdRole) REFERENCES dbo.UserRole(Id)
)
GO

INSERT dbo.Users
(
    DisplayName,
    UserName,
    Password,
    IdRole
)
VALUES
(   N'Lâm', -- DisplayName - nvarchar(max)
    N'admin', -- UserName - nvarchar(100)
    N'db69fc039dcbd2962cb4d28f5891aae1', -- Password - nvarchar(max)
    1    -- IdRole - int
    )
GO

INSERT dbo.Users
(
    DisplayName,
    UserName,
    Password,
    IdRole
)
VALUES
(   N'Nhân viên', -- DisplayName - nvarchar(max)
    N'staff', -- UserName - nvarchar(100)
    N'262ccc32f3017b74b1689018c348ea11', -- Password - nvarchar(max)
    2    -- IdRole - int
    )
GO

CREATE TABLE Input(
	Id NVARCHAR(128) PRIMARY KEY,
	DateInput DATETIME
)
GO

CREATE TABLE InputInfo(
	Id NVARCHAR(128) PRIMARY KEY,
	IdObject NVARCHAR(128),
	IdInput NVARCHAR(128),
	Count INT,
	InputPrice FLOAT DEFAULT 0,
	OutputPrice FLOAT DEFAULT 0,
	Status NVARCHAR(max)

	FOREIGN KEY(IdObject) REFERENCES dbo.Object(Id),
	FOREIGN KEY(IdInput) REFERENCES dbo.Input(id)
)
GO

CREATE TABLE Output(
	Id NVARCHAR(128) PRIMARY KEY,
	DateOutput DATETIME
)
GO

CREATE TABLE OutputInfo(
	Id NVARCHAR(128) PRIMARY KEY,
	IdObject NVARCHAR(128),
	IdOutput NVARCHAR(128),
	IdCustomer INT NOT NULL,
	Count INT,
	Status NVARCHAR(max)

	FOREIGN KEY(IdObject) REFERENCES dbo.Object(Id),
	FOREIGN KEY(IdOutput) REFERENCES dbo.Output(id),
	FOREIGN KEY(IdCustomer) REFERENCES dbo.Customer(Id)
)
GO