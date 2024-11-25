-- subqueries for finding average rating of properties
SELECT Property.property_id, Property.name
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) >= 4.0
)




SELECT
    u.user_id
FROM
    User u
WHERE
    (SELECT COUNT(*)
     FROM Booking b
     WHERE b.user_id = u.user_id) > 3;
