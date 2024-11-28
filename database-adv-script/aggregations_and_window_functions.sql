SELECT 
    user_id, 
    COUNT(booking_id) AS total_bookings
FROM 
    Booking
GROUP BY 
    user_id
ORDER BY 
    total_bookings DESC;


WITH PropertyBookingCounts AS (
    SELECT 
        property_id, 
        COUNT(booking_id) AS booking_count,
        ROW_NUMBER() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_rank,
        RANK() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_dense_rank
    FROM 
        Booking
    GROUP BY 
        property_id
)
SELECT 
    p.property_id,
    p.name,
    p.location,
    pbc.booking_count,
    pbc.booking_rank,WITH PropertyBookingCounts AS (
    SELECT 
        property_id, 
        COUNT(booking_id) AS booking_count,
        ROW_NUMBER() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_rank,
        RANK() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_dense_rank
    FROM 
        Booking
    GROUP BY 
        property_id
)
SELECT 
    p.property_id,
    p.name,
    p.location,
    pbc.booking_count,
    pbc.booking_rank,
    pbc.booking_dense_rank
FROM 
    PropertyBookingCounts pbc
JOIN 
    Property p ON pbc.property_id = p.property_id
ORDER BY 
    pbc.booking_count DESC;
    pbc.booking_dense_rank
FROM 
    PropertyBookingCounts pbc
JOIN 
    Property p ON pbc.property_id = p.property_id
ORDER BY 
    pbc.booking_count DESC;