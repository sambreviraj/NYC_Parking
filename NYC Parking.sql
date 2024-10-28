--CREATE DATABASE parking
create database parking;

-- Create Parking Rates Table
CREATE TABLE ParkingRates (
    RateID INT PRIMARY KEY,
    Location VARCHAR(255) UNIQUE,
    HourlyRate DECIMAL(5, 2) NOT NULL,
    DailyRate DECIMAL(7, 2) NOT NULL
);

-- Create Payment Method Table
CREATE TABLE PaymentMethod (
    PaymentMethodID INT PRIMARY KEY,
    Method VARCHAR(50) NOT NULL
);

-- Create enhanced Owner Table with more details
CREATE TABLE Owner (
    OwnerID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInformation VARCHAR(255),
    Address VARCHAR(255),
    DateOfBirth DATE,
    UNIQUE (ContactInformation) -- Unique contact info
);

-- Create Vehicle Table with additional details
CREATE TABLE Vehicle (
    VehicleID INT PRIMARY KEY,
    OwnerID INT,
    Make VARCHAR(255),
    Model VARCHAR(255),
    LicensePlate VARCHAR(20) UNIQUE,
    Year INT,
    Color VARCHAR(50),
    FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
);

-- Create Transaction Table with Payment Method
CREATE TABLE TransactionTable (
    TransactionID INT PRIMARY KEY,
    ReservationID INT,
    Amount DECIMAL(10, 2),
    PaymentMethodID INT,
    Date DATETIME,
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethod(PaymentMethodID)
);


--Sample Data Insertion

-- Insert Sample Data into ParkingRates
INSERT INTO ParkingRates (RateID, Location, HourlyRate, DailyRate)
VALUES
    (1, 'Times Square', 5.00, 50.00),
    (2, 'Central Park', 3.00, 30.00),
    (3, 'Broadway', 4.00, 40.00),
    (4, 'Empire State Building', 5.00, 45.00),
    (5, 'Statue of Liberty', 6.00, 55.00);

-- Insert Sample Data into PaymentMethod
INSERT INTO PaymentMethod (PaymentMethodID, Method)
VALUES
    (1, 'Credit Card'),
    (2, 'PayPal'),
    (3, 'Apple Pay');

-- Insert Sample Data into Owner
INSERT INTO Owner (OwnerID, Name, ContactInformation, Address, DateOfBirth)
VALUES
    (101, 'Ryan Oliver', 'ryan.oliver@example.com', '123 Main St, NYC', '1985-06-15'),
    (102, 'Annette Cooper', 'cooper.annette@example.com', '456 Elm St, NYC', '1990-03-22');

-- Insert Sample Data into Vehicle
INSERT INTO Vehicle (VehicleID, OwnerID, Make, Model, LicensePlate, Year, Color)
VALUES
    (201, 101, 'Audi', 'A7', 'VNS609', 2018, 'Black'),
    (202, 102, 'Porsche', 'Panamera', 'SMK247', 2019, 'White');

-- Insert Sample Data into Reservation
INSERT INTO Reservation (ReservationID, ParkingSpaceID, OwnerID, VehicleID, StartTime, EndTime)
VALUES
    (301, 1, 101, 201, '2023-11-28 08:00', '2023-11-28 18:00'),
    (302, 2, 102, 202, '2023-11-29 09:00', '2023-11-29 17:00');

-- Insert Sample Data into TransactionTable
INSERT INTO TransactionTable (TransactionID, ReservationID, Amount, PaymentMethodID, Date)
VALUES
    (401, 301, 20.00, 1, '2023-11-28 10:30'),
    (402, 302, 0.00, 2, '2023-11-29 16:45');

-- Display Data from All Tables
SELECT * FROM ParkingSpace;
SELECT * FROM Owner;
SELECT * FROM Vehicle;
SELECT * FROM Reservation;
SELECT * FROM TransactionTable;
SELECT * FROM ParkingRates;
SELECT * FROM PaymentMethod;
