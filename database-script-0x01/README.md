# Database Schema and Constraints

This document provides an overview of the database schema and the constraints applied to ensure data integrity and consistency.

## Schema Definition

The database schema is designed to support the core functionalities of the Airbnb-like application. It includes the following tables:

1. **Users**
    - `id` (Primary Key)
    - `username`
    - `email`
    - `password`
    - `created_at`

2. **Listings**
    - `id` (Primary Key)
    - `user_id` (Foreign Key referencing Users)
    - `title`
    - `description`
    - `price`
    - `created_at`

3. **Bookings**
    - `id` (Primary Key)
    - `listing_id` (Foreign Key referencing Listings)
    - `user_id` (Foreign Key referencing Users)
    - `start_date`
    - `end_date`
    - `created_at`

## Constraints

To maintain data integrity, the following constraints are applied:

- **Primary Key Constraints**: Ensure each record in a table is unique.
- **Foreign Key Constraints**: Maintain referential integrity between tables.
- **Not Null Constraints**: Ensure essential fields are not left empty.
- **Unique Constraints**: Ensure certain fields (e.g., email, username) are unique across the database.

These constraints help in maintaining the accuracy and reliability of the data stored in the database.

## Usage

To create the schema and apply the constraints, run the provided SQL scripts in your database management system.

For any questions or issues, please contact the development team.
