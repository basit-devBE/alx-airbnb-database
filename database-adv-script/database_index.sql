-- User Table Indexes with Performance Analysis
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_last_name ON User(last_name);
CREATE INDEX idx_user_role ON User(role);

EXPLAIN ANALYZE 
SELECT * FROM User 
WHERE email = 'example@email.com';

-- Property Table Indexes with Performance Analysis
CREATE INDEX idx_property_host ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(price_per_night);

EXPLAIN ANALYZE 
SELECT * FROM Property 
WHERE host_id = 'host-uuid' AND location LIKE '%New York%';

-- Booking Table Indexes with Performance Analysis
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);
CREATE INDEX idx_booking_status ON Booking(status);

EXPLAIN ANALYZE 
SELECT * FROM Booking 
WHERE user_id = 'user-uuid' AND status = 'confirmed';

-- Payment Table Indexes with Performance Analysis
CREATE INDEX idx_payment_booking ON Payment(booking_id);
CREATE INDEX idx_payment_method ON Payment(payment_method);

EXPLAIN ANALYZE 
SELECT * FROM Payment 
WHERE booking_id = 'booking-uuid';

-- Review Table Indexes with Performance Analysis
CREATE INDEX idx_review_property ON Review(property_id);
CREATE INDEX idx_review_user ON Review(user_id);
CREATE INDEX idx_review_rating ON Review(rating);

EXPLAIN ANALYZE 
SELECT * FROM Review 
WHERE property_id = 'property-uuid' AND rating >= 4;

-- Message Table Indexes with Performance Analysis
CREATE INDEX idx_message_sender ON Message(sender_id);
CREATE INDEX idx_message_recipient ON Message(recipient_id);
CREATE INDEX idx_message_sent_at ON Message(sent_at);

EXPLAIN ANALYZE 
SELECT * FROM Message 
WHERE sender_id = 'sender-uuid' 
ORDER BY sent_at DESC 
LIMIT 10;