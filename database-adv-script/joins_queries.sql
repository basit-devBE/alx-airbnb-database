SELECT 
    User.user_id, 
    Booking.booking_id
FROM 
    User
INNER JOIN 
    Booking
ON 
    User.user_id = Booking.user_id;


/* LEFT JOIN*/
SELECT
    Property.property_id,
    Review.review_id

FROM
    Property
LEFT JOIN
    Review

ON 
    Property.property_id = Review.property_id



--Full outer Join Query
SELECT User.user_id,
      Booking.booking_id

FROM 
    User
FULL OUTER JOIN
    Booking
ON
    User.user_ud = Booking.user_id