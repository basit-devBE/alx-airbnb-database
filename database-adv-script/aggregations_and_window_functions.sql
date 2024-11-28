SELECT 
    user_id,
    COUNT(booking_id) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id;


WITH PropertyBookingCounts AS (
    SELECT 
        property_id,
        COUNT(booking_id) AS total_bookings
    FROM 
        bookings
    GROUP BY 
        property_id
)
SELECT 
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS rank
FROM 
    PropertyBookingCounts;
