# Parking Reservation System

## Description

The **Parking Reservation System** is a comprehensive database solution designed to manage parking spaces, vehicle reservations, transactions, and user profiles. This system enables users to reserve parking spaces, track transactions, and manage vehicle information seamlessly. Built using SQL, the system incorporates various advanced features, including payment methods, parking rates, and data integrity checks.

## Features

- **Parking Space Management**: Maintain a list of parking spaces with their statuses (Free/Paid) and availability.
- **Owner Management**: Keep track of vehicle owners with detailed information including contact details and addresses.
- **Vehicle Management**: Store vehicle details such as make, model, year, and license plate.
- **Reservation System**: Allow users to create and manage parking reservations with specified start and end times.
- **Transaction Tracking**: Record payment transactions linked to reservations, including payment methods.
- **Dynamic Parking Rates**: Manage parking rates based on location and time, allowing for flexible pricing models.
- **Data Integrity**: Implement checks and constraints to maintain data consistency and accuracy.

## Database Structure

The database consists of the following tables:

- **ParkingSpace**: Stores information about parking locations, status, and availability.
- **Owner**: Contains details about vehicle owners.
- **Vehicle**: Holds information about vehicles, including owner references.
- **Reservation**: Manages reservations made by vehicle owners for parking spaces.
- **TransactionTable**: Records payment transactions linked to reservations.
- **PaymentMethod**: Details the different payment methods available.
- **ParkingRates**: Maintains parking rates based on location.
