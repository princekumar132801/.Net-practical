CREATE DATABASE PlacementDB;
GO

USE PlacementDB;
GO

CREATE TABLE Students (
    StudentId INT PRIMARY KEY IDENTITY(1,1),
    EnrollmentNo VARCHAR(20) NOT NULL,
    StudentName NVARCHAR(100) NOT NULL,
    Department NVARCHAR(100) NOT NULL,
    IsPlaced BIT NOT NULL DEFAULT 0
);
GO

CREATE TABLE Placements (
    PlacementId INT PRIMARY KEY IDENTITY(1,1),
    StudentId INT FOREIGN KEY REFERENCES Students(StudentId),
    CompanyName NVARCHAR(100) NOT NULL,
    JobRole NVARCHAR(100) NOT NULL,
    PackageLPA DECIMAL(10, 2) NOT NULL
);
GO

-- Sample Data matching the Output Screenshot
INSERT INTO Students (EnrollmentNo, StudentName, Department, IsPlaced) VALUES
('92510103101', 'Aarav Patel', 'Computer Engineering', 1),
('92510103102', 'Riya Shah', 'Information Technology', 1),
('92510103103', 'Karan Mehta', 'Computer Engineering', 0),
('92510103104', 'Neha Joshi', 'Computer Engineering', 1),
('92510103105', 'Dev Trivedi', 'Computer Engineering', 1),
('92510103106', 'Meera Desai', 'Information Technology', 1),
('92510103107', 'Isha Parmar', 'Information Technology', 0),
('92510103108', 'Harsh Vyas', 'Electronics & Communication', 1),
('92510103109', 'Yash Gohil', 'Electronics & Communication', 0),
('92510103110', 'Jay Solanki', 'Mechanical Engineering', 1),
('92510103111', 'Pooja Bhatt', 'Information Technology', 1),
('92510103112', 'Nidhi Rana', 'Computer Engineering', 0);
GO

INSERT INTO Placements (StudentId, CompanyName, JobRole, PackageLPA) VALUES
(1, 'TCS', 'Software Engineer', 3.60),
(2, 'Infosys', 'Systems Engineer', 3.80),
(4, 'Accenture', 'Associate Software Engineer', 4.50),
(5, 'TCS', 'Digital Analyst', 7.00),
(6, 'Wipro', 'Project Engineer', 3.50),
(8, 'Infosys', 'Power Programmer', 9.50),
(10, 'L&T', 'Graduate Engineer Trainee', 5.20),
(11, 'Accenture', 'Advanced App Engineer', 6.50);
GO
