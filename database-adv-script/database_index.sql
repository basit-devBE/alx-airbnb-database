-- Indexes for User Table
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_last_name ON User(last_name);
CREATE INDEX idx_user_role ON User(role);

-- Indexes for Property Table
CREATE INDEX idx_property_host ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(price_per_night);

-- Indexes for Booking Table
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);
CREATE INDEX idx_booking_status ON Booking(status);

-- Indexes for Payment Table
CREATE INDEX idx_payment_booking ON Payment(booking_id);
CREATE INDEX idx_payment_method ON Payment(payment_method);

-- Indexes for Review Table
CREATE INDEX idx_review_property ON Review(property_id);
CREATE INDEX idx_review_user ON Review(user_id);
CREATE INDEX idx_review_rating ON Review(rating);

-- Indexes for Message Table
CREATE INDEX idx_message_sender ON Message(sender_id);
CREATE INDEX idx_message_recipient ON Message(recipient_id);
CREATE INDEX idx_message_sent_at ON Message(sent_at);