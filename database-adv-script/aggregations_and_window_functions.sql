SELECT 
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_number
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        Booking
    GROUP BY 
        property_id
) AS property_totals
ORDER BY 
    row_number;
