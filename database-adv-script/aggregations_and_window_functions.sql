SELECT 
    property_id,
    total_bookings,
    rank
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings,
        RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
    FROM 
        Booking
    GROUP BY 
        property_id
) AS ranked_properties
ORDER BY 
    rank;
