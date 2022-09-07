use master;

drop database if exists PRS;

Create Database PRS;

use PRS;

Create Table Users (
UsersID int not null primary key identity(1,1),
Username varchar(30) not null UNIQUE,
Password varchar(30) not NULL,
FirstName varchar(30) not null,
LastName varchar(30) not null,
Phone varchar(12) null,
Email varchar(255) NULL,
ISReviewer bit not null,
ISAdmin bit not null
);

Create Table Vendors (
VendorsId Int not null primary key IDENTITY(1,1),
Code varchar(30) not null unique,
Name varchar(30) not null,
Address varchar(30) not null,
City varchar(30) not null,
State char(2) not null,
Zip char(5) not NULL,
Phone varchar(12) null,
Email varchar(255) null
);

create table Products (
ProductsId int not null primary key IDENTITY(1,1),
PartNbr varchar(30) not null unique,
Name varchar(30) not null,
Price decimal(11, 2) not null,
Unit varchar(30) not null,
PhotoPath varchar(255) null,
VendorsId int not null foreign key references Vendors(VendorsID),
);

Create Table Requests (
RequestsID int not null primary key identity(1,1),
Description varchar(80) not null,
Justification varchar(80) not null,
RejectionReason varchar(80) null,
DeliveryMode varchar(20) not null default 'Pickup',
Status varchar(10) not null default 'New',
Total decimal(11, 2) not null default 0,
UsersID int not null foreign key references Users(UsersID)
);

Create Table RequestLines (
RequestLineID int not null primary key identity(1,1),
RequestsID int not null foreign key references Requests(RequestsID),
ProductsID int not null foreign key references Products(ProductsID),
Quantity int not null default 1
);

Insert Users
(Username, Password, FirstName, LastName, Phone, Email, IsReviewer, IsAdmin) Values
('bdog01', 12345678, 'Bob', 'Doggen', 6143259900, 'bdog01@gmail.com', 0, 0),
('warthunder', 4567890, 'Steve', 'Thunderman', 6142829810, 'wthunder@gmail.com', 0, 0);

Insert Vendors 
(code, name, address, city, state, zip, phone, Email) VALUES
('AutoRU', 'Autopart-R-Us', '123 Main Street', 'Columbus', 'OH', 43211, 614-309-0500, 'AutopartsRUs@autorus.com'),
('VINAP', 'Vintage Auto Parts', '256 S. High Street', 'Columbus', 'OH', 43224, 614-892-8000, 'vintageap@gmail.com'),
('FORAE', 'Foreign Auto Exchange', '124 Airport Dr.', 'Columbus', 'OH', 43223, 614-435-0978, 'FAE01@gmail.com');

Insert Products 
(PartNbr, Name, Price, Unit, PhotoPath, VendorsID) VALUES
(98765, 'Alternator', 89.99, 'Each', 'Not Available', (Select VendorsID from vendors where code = 'AutoRU')),
(123, 'starter', 109.50, 'Each', 'Not Available', (Select VendorsID from vendors where code = 'VinAP')),
(8887, 'v-belt', 29.99, 'Each', 'Not Available',  (Select VendorsID from vendors where code = 'FORAE')),
(89887, 'Radiator', 299.99, 'Each', 'Not Available', (Select VendorsID from vendors where code = 'AutoRU')),
(4445, 'Oil Filter', 5.99, 'Each', 'Not Available', (Select VendorsID from vendors where code = 'VINAP'));

INSERT Requests
(Description, Justification, RejectionReason, DeliveryMode, Status, Total, UsersID) values
('alternators', 'vehicle not charging', 'not applicable', Default, 'Complete', 500.00, 1), 
('Radiators', 'leaking radiator', 'Credit Card Declined', Default, 'Cancelled', default, 2);

Insert RequestLines 
(RequestsID, ProductsID, Quantity) VALUES
(1, 1, 5),
(2, 4, 2);