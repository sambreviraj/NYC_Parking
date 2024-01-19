--CREATE DATABASE parking
create database parking;



-- Create table ParkingSpace 
CREATE TABLE ParkingSpace (
    ParkingSpaceID INT PRIMARY KEY,
    Location VARCHAR(255),
    Zipcode VARCHAR(10),
    Status VARCHAR(20) CHECK (Status IN ('Free', 'Paid')),
    Availability VARCHAR(20)
);



-- Create Owner Table
CREATE TABLE Owner (
    OwnerID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInformation VARCHAR(255)
);



-- Create Vehicle Table
CREATE TABLE Vehicle (
    VehicleID INT PRIMARY KEY,
    OwnerID INT,
    Make VARCHAR(255),
    Model VARCHAR(255),
    LicensePlate VARCHAR(20),
    FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
);



-- Create Reservation Table
CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY,
    ParkingSpaceID INT,
    OwnerID INT,
    VehicleID INT,
    StartTime DATETIME,
    EndTime DATETIME,
    FOREIGN KEY (ParkingSpaceID) REFERENCES ParkingSpace(ParkingSpaceID),
    FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);



-- Create Transaction Table
CREATE TABLE TransactionTable (
    TransactionID INT PRIMARY KEY,
    ReservationID INT,
    Amount DECIMAL(10, 2),
    Date DATETIME,
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID)
);



-- Insert Sample Data into ParkingSpace (30 records)
INSERT INTO ParkingSpace (ParkingSpaceID, Location, Zipcode, Status, Availability)
VALUES
    (1, 'Times Square', '10001', 'Paid', 'Available'),
    (2, 'Central Park', '10002', 'Free', 'Occupied'),
    (3, 'Broadway', '10003', 'Paid', 'Available'),
    (4, 'Empire State Building', '10004', 'Free', 'Occupied'),
    (5, 'Statue of Liberty', '10005', 'Paid', 'Available'),
    (6, 'Brooklyn Bridge', '10006', 'Free', 'Occupied'),
    (7, 'Grand Central Terminal', '10007', 'Paid', 'Available'),
    (8, 'The High Line', '10008', 'Free', 'Occupied'),
    (9, 'Museum of Modern Art', '10009', 'Paid', 'Available'),
    (10, 'Central Park Zoo', '10010', 'Free', 'Available'),
    (11, 'Rockefeller Center', '10011', 'Paid', 'Occupied'),
    (12, 'Fifth Avenue', '10012', 'Free', 'Available'),
    (13, 'Metropolitan Museum of Art', '10013', 'Paid', 'Occupied'),
    (14, 'Times Square', '10014', 'Free', 'Available'),
    (15, 'One World Trade Center', '10015', 'Paid', 'Occupied'),
    (16, 'Wall Street', '10016', 'Free', 'Available'),
    (17, 'Chinatown', '10017', 'Paid', 'Occupied'),
    (18, 'Little Italy', '10018', 'Free', 'Available'),
    (19, 'Harlem', '10019', 'Paid', 'Occupied'),
    (20, 'Greenwich Village', '10020', 'Free', 'Available'),
    (21, 'Union Square', '10021', 'Paid', 'Occupied'),
    (22, 'Williamsburg', '10022', 'Free', 'Available'),
    (23, 'The Bronx', '10023', 'Paid', 'Occupied'),
    (24, 'Queens', '10024', 'Free', 'Available'),
    (25, 'Staten Island', '10025', 'Paid', 'Occupied'),
    (26, 'Coney Island', '10026', 'Free', 'Available'),
    (27, 'Battery Park', '10027', 'Paid', 'Occupied'),
    (28, 'Hudson Yards', '10028', 'Free', 'Available'),
    (29, 'DUMBO', '10029', 'Paid', 'Occupied'),
    (30, 'Chelsea Market', '10030', 'Free', 'Available');

-- Display ParkingSpace Data
select * from ParkingSpace;



-- Insert Sample Data into Owner (2 records)
INSERT INTO Owner VALUES
    (101, 'Ryan Oliver', 'ryan.oliver@example.com'),
    (102, 'Annette Cooper', 'cooper.annette@example.com');

-- Display Owner Data
select * from Owner;



-- Insert Sample Data into Vehicle (2 records)
INSERT INTO Vehicle VALUES
    (201, 101, 'Audi', 'A7', 'VNS609'),
    (202, 102, 'Porsche', 'Panamera', 'SMK247');

-- Display Vehicle Data
select * from Vehicle;



-- Insert Sample Data into Reservation (2 records)
INSERT INTO Reservation VALUES
    (301, 1, 101, 201, '2023-11-28 08:00', '2023-11-28 18:00'),
    (302, 2, 102, 202, '2023-11-29 09:00', '2023-11-29 17:00');

-- Display Reservation Data
select * from Reservation;



-- Insert Sample Data into Transaction (2 records)
INSERT INTO TransactionTable VALUES
    (401, 301, 20.00, '2023-11-28 10:30'),
    (402, 302, 0.00, '2023-11-29 16:45');

-- Display TransactionTable Data
select * from TransactionTable;
