use master;

drop database if exists Bootcamp;

Create Database Bootcamp;

use Bootcamp;

Create Table Students (
    StudentId int NOT NULL Primary Key Identity(1, 1), 
    FirstName varchar(30) Not Null,
    LastName Varchar(60) Not Null,
    City varchar(60) not null,
    StateCode char(2) Not Null Default 'OH',
    Phone varchar(60) Not Null UNIQUE,
    Email varchar(100) Null,
    DateOfBirth date not null,
);

Create Table GraduationRequirements (
    Id int Not Null Primary Key Identity(1, 1),
    StudentId int not null Foreign Key References Students(StudentId),
    Topic varchar(60) Not null,
    Score Int null check (score >= 0 and score <= 120),
    DateTaken date Null  
);

Insert students 
(FirstName, LastName, City, StateCode, Phone, Email, DateOfBirth) values 
('James', 'McDonald', 'Cincinnati', 'OH', '513-523-9969', 'jmcdonald@gmail.com', '4/24/1984'),
('Karl', 'Banks', 'Cincinnati', 'OH', '513-523-6900', 'Kbanks@gmail.com', '7/28/1992'),
('Sam', 'Schultz', 'Cincinnati', 'OH', '513-313-9876', 'SSchultz@gmail.com', '1/11/1990'),
('Jack', 'Lambert', 'Cincinnati', 'OH', '513-260-4821', 'JLambert@gmail.com', '2/20/1996'),
('Josh', 'Scott', 'Pittsburg', 'PA', '419-432-0215', 'JScott@gmail.com', '11/15/1984'),
('Ian', 'Smith', 'Cincinnati', 'OH', '513-159-5679', 'ISmith@gmail.com', '8/21/1986'),
('Billy', 'Dotson', 'Pataskala', 'OH', '614-419-5260', 'Billybad5@gmail.com', '3/04/1981')

Insert GraduationRequirements
(StudentID, Topic) VALUES
((select studentid from students where firstname = 'James'), 'Git/GitHub'),
(1, 'SQL'),
(1, 'C#'),
(1, 'Java Script'),
(1, 'Angular'),
(1, 'Capstone'),
(2, 'Git/GitHub'),
(2, 'SQL'),
(2, 'C#'),
(2, 'Java Script'),
(2, 'Angular'),
(2, 'Capstone'),
(3, 'Git/GitHub'),
(3, 'SQL'),
(3, 'C#'),
(3, 'Java Script'),
(3, 'Angular'),
(3, 'Capstone'),
(4, 'Git/GitHub'),
(4, 'SQL'),
(4, 'C#'),
(4, 'Java Script'),
(4, 'Angular'),
(4, 'Capstone'),
(5, 'Git/GitHub'),
(5, 'SQL'),
(5, 'C#'),
(5, 'Java Script'),
(5, 'Angular'),
(5, 'Capstone'),
(6, 'Git/GitHub'),
(6, 'SQL'),
(6, 'C#'),
(6, 'Java Script'),
(6, 'Angular'),
(6, 'Capstone'),
(7, 'Git/GitHub'),
(7, 'SQL'),
(7, 'C#'),
(7, 'Java Script'),
(7, 'Angular'),
(7, 'Capstone')