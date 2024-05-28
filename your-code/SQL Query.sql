CREATE DATABASE lab_mysql;

USE lab_mysql;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

/*creating the table car*/
CREATE TABLE cars (
    ID INT PRIMARY KEY,
    VIN VARCHAR(50),
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),Year YEAR,
    Color VARCHAR(50)
);

/* Insert Data into the Table*/
INSERT INTO cars (ID, VIN, Manufacturer, Model, Year, Color) VALUES
(0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

/*create Customer Table*/
CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    CustomerID INT,
    Name VARCHAR(255),
    Phone VARCHAR(50),
    Email VARCHAR(255) NULL,  
    Address VARCHAR(255),
    City VARCHAR(255),
    StateProvince VARCHAR(255),
    Country VARCHAR(255),
    Postal VARCHAR(50)
);

/* Insert Data into the Table*/

INSERT INTO Customers (ID, CustomerID, Name, Phone, Email, Address, City, StateProvince, Country, Postal) VALUES
(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(1, 20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

/*create salesperson table*/
CREATE TABLE Salespersons (
    ID INT PRIMARY KEY,
    StaffID VARCHAR(50),
    Name VARCHAR(255),
    Store VARCHAR(255)
);

/*Insert Data*/
INSERT INTO Salespersons (ID, StaffID, Name, Store) VALUES
(0, '00001', 'Petey Cruiser', 'Madrid'),
(1, '00002', 'Anna Sthesia', 'Barcelona'),
(2, '00003', 'Paul Molive', 'Berlin'),
(3, '00004', 'Gail Forcewind', 'Paris'),
(4, '00005', 'Paige Turner', 'Mimia'),  
(5, '00006', 'Bob Frapples', 'Mexico City'),
(6, '00007', 'Walter Melon', 'Amsterdam'),
(7, '00008', 'Shonda Leer', 'São Paulo');

/*create invoice table*/

CREATE TABLE Invoices (
    ID INT PRIMARY KEY,
    InvoiceNumber BIGINT,
    Date DATE,
    Car INT,
    Customer INT,
    SalesPerson INT
); 

/*Insert Data*/
INSERT INTO Invoices (ID, InvoiceNumber, Date, Car, Customer, SalesPerson) VALUES
(0, 852399038, '2018-08-22', 0, 1, 3),
(1, 731166526, '2018-12-31', 3, 0, 5),
(2, 271135104, '2019-01-22', 2, 2, 7);

