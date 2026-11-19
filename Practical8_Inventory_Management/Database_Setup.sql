CREATE DATABASE InventoryDB;
GO

USE InventoryDB;
GO

CREATE TABLE Products (
    ProductId INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(18, 2) NOT NULL,
    Category NVARCHAR(50) NOT NULL
);
GO
