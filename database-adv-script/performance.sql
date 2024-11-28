-- Initial Comprehensive Booking Query
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    
    u.user_id AS user_user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.role,
    
    p.property_id,
    p.name AS property_name,
    p.location,
    p.price_per_night,
    
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date,
    pay.payment_method
FROM 
    Booking b
LEFT JOIN User u ON b.user_id = u.user_id
LEFT JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.status = 'confirmed'
ORDER BY 
    b.start_date DESC
LIMIT 1000;

-- Performance Analysis
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    
    u.user_id AS user_user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.role,
    
    p.property_id,
    p.name AS property_name,
    p.location,
    p.price_per_night,
    
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date,
    pay.payment_method
FROM 
    Booking b
LEFT JOIN User u ON b.user_id = u.user_id
LEFT JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.status = 'confirmed'
ORDER BY 
    b.start_date DESC
LIMIT 1000;

-- Optimized Query with Indexing
-- Ensure these indexes exist before running the query
CREATE INDEX idx_booking_status_date ON Booking(status, start_date);
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);

-- Optimized Query
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    
    u.user_id AS user_user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.role,
    
    p.property_id,
    p.name AS property_name,
    p.location,
    p.price_per_night,
    
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date,
    pay.payment_method
FROM 
    Booking b
INNER JOIN User u ON b.user_id = u.user_id
INNER JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.status = 'confirmed'
ORDER BY 
    b.start_date DESC
LIMIT 1000;

-- Performance Analysis of Optimized Query
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    
    u.user_id AS user_user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.role,
    
    p.property_id,
    p.name AS property_name,
    p.location,
    p.price_per_night,
    
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date,
    pay.payment_method
FROM 
    Booking b
INNER JOIN User u ON b.user_id = u.user_id
INNER JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.status = 'confirmed'
ORDER BY 
    b.start_date DESC
LIMIT 1000;