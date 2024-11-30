-- Create partitioned table
CREATE TABLE Booking_Partitioned (
    booking_id SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL
) PARTITION BY RANGE (start_date);

-- Create partitions
CREATE TABLE Booking_Partition_2020 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2020-01-01') TO ('2021-01-01');

CREATE TABLE Booking_Partition_2021 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2021-01-01') TO ('2022-01-01');

CREATE TABLE Booking_Partition_2022 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE Booking_Partition_2023 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');


-- Insert data from original Booking table to partitioned table
INSERT INTO Booking_Partitioned (booking_id, start_date, end_date, total_price, status, user_id, property_id)
SELECT booking_id, start_date, end_date, total_price, status, user_id, property_id
FROM Booking;

-- Test query performance on partitioned table
EXPLAIN ANALYZE
SELECT * FROM Booking_Partitioned
WHERE start_date BETWEEN '2021-06-01' AND '2021-06-30';