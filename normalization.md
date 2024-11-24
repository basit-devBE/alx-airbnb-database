# **Database Normalization to Third Normal Form (3NF)**

## **Introduction**
Normalization is a systematic process of organizing data in a database to reduce redundancy and improve data integrity. The process ensures that the database follows a set of rules and is structured efficiently. This document outlines how the initial database schema for the **Property Booking System** was reviewed and adjusted to achieve **Third Normal Form (3NF)**.

---

## **Steps to Achieve 3NF**
The normalization process consists of the following steps:

### **1. First Normal Form (1NF)**
To satisfy 1NF:
- Ensure that each column contains atomic (indivisible) values.
- Ensure that each row is uniquely identifiable (using a primary key).
- Eliminate any repeating groups or arrays in a column.

#### **Application to Our Schema**:
- **User, Property, and Booking tables** already satisfy 1NF because:
  - Each attribute contains atomic values.
  - Each entity has a primary key (`userId`, `propertyId`, `bookingId`).
  - No repeating groups or arrays exist.

---

### **2. Second Normal Form (2NF)**
To satisfy 2NF:
- The database must first be in 1NF.
- Eliminate partial dependencies (where a non-prime attribute is dependent on part of a composite primary key).

#### **Application to Our Schema**:
- In the **Booking** entity, all attributes depend entirely on the composite key (`userId` and `propertyId`), but this dependency is redundant.
- **Solution**: Split the **Booking** entity into two tables:
  - A **Booking** table with `bookingId`, `userId`, `propertyId`, `checkInDate`, and `checkOutDate`.
  - A **PropertyUser** table that links `propertyId` to `userId`, representing ownership.
- After splitting, all non-prime attributes depend on the whole primary key.

---

### **3. Third Normal Form (3NF)**
To satisfy 3NF:
- The database must first be in 2NF.
- Eliminate transitive dependencies (where a non-prime attribute is dependent on another non-prime attribute).

#### **Application to Our Schema**:
- No transitive dependencies were found in the existing entities after 2NF adjustments. 
- Attributes such as `email` and `name` in the **User** table are directly related to `userId`.
- Similarly, all attributes in **Property** and **Booking** tables depend directly on their respective primary keys.

---

## **Normalized Database Design**
The final normalized schema in 3NF includes the following entities:

### **1. User Table**
Represents system users who own properties or make bookings.
- **Attributes**:
  - `userId` (Primary Key)
  - `name`
  - `email`
  - `createdAt`
  - `updatedAt`

### **2. Property Table**
Represents properties listed in the system.
- **Attributes**:
  - `propertyId` (Primary Key)
  - `name`
  - `location`
  - `price`
  - `createdAt`
  - `updatedAt`

### **3. Booking Table**
Represents bookings made by users for specific properties.
- **Attributes**:
  - `bookingId` (Primary Key)
  - `userId` (Foreign Key referencing User)
  - `propertyId` (Foreign Key referencing Property)
  - `checkInDate`
  - `checkOutDate`
  - `createdAt`
  - `updatedAt`

### **4. PropertyUser Table**
Represents the ownership relationship between users and properties.
- **Attributes**:
  - `propertyId` (Primary Key, Foreign Key referencing Property)
  - `userId` (Primary Key, Foreign Key referencing User)

---

## **Advantages of 3NF**
1. **Eliminates Redundancy**:
   - By introducing the `PropertyUser` table, the ownership relationship is isolated, avoiding redundant data in the **Property** or **Booking** tables.
   
2. **Improves Data Integrity**:
   - Each piece of information is stored in exactly one place, minimizing the risk of inconsistency.

3. **Simplifies Maintenance**:
   - Changes to data (e.g., updating ownership) require modifications in only one place.

4. **Scalability**:
   - The design supports large datasets and complex queries efficiently.

---

## **Summary**
The database schema has been reviewed and adjusted to conform to **Third Normal Form (3NF)**. The normalization process eliminated redundancy and ensured a robust, scalable design. This schema is now ready for implementation in a database system such as MongoDB or SQL-based databases.

If you have any questions or suggestions, feel free to reach out!
