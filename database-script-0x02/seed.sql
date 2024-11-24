-- Insert sample data into the User table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('1e1a1b1c-d111-41aa-bd0b-a11111a1b1c1', 'John', 'Doe', 'john.doe@example.com', 'hashed_password1', '1234567890', 'guest', DEFAULT),
    ('2e2a2b2c-d222-42aa-bd0b-a22222a2b2c2', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password2', '0987654321', 'host', DEFAULT),
    ('3e3a3b3c-d333-43aa-bd0b-a33333a3b3c3', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password3', '5556667777', 'guest', DEFAULT),
    ('4e4a4b4c-d444-44aa-bd0b-a44444a4b4c4', 'Bob', 'Brown', 'bob.brown@example.com', 'hashed_password4', '2223334444', 'admin', DEFAULT);

-- Insert sample data into the Property table
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
    ('5e5a5b5c-d555-45aa-bd0b-a55555a5b5c5', '2e2a2b2c-d222-42aa-bd0b-a22222a2b2c2', 'Cozy Apartment', 'A cozy apartment in the city center', 'New York, USA', 150.00, DEFAULT, DEFAULT),
    ('6e6a6b6c-d666-46aa-bd0b-a66666a6b6c6', '2e2a2b2c-d222-42aa-bd0b-a22222a2b2c2', 'Beach House', 'A beautiful beach house with ocean views', 'Miami, USA', 300.00, DEFAULT, DEFAULT);

-- Insert sample data into the Booking table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    ('7e7a7b7c-d777-47aa-bd0b-a77777a7b7c7', '5e5a5b5c-d555-45aa-bd0b-a55555a5b5c5', '1e1a1b1c-d111-41aa-bd0b-a11111a1b1c1', '2024-12-01', '2024-12-05', 600.00, 'confirmed', DEFAULT),
    ('8e8a8b8c-d888-48aa-bd0b-a88888a8b8c8', '6e6a6b6c-d666-46aa-bd0b-a66666a6b6c6', '3e3a3b3c-d333-43aa-bd0b-a33333a3b3c3', '2024-12-10', '2024-12-15', 1500.00, 'pending', DEFAULT);

-- Insert sample data into the Payment table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    ('9e9a9b9c-d999-49aa-bd0b-a99999a9b9c9', '7e7a7b7c-d777-47aa-bd0b-a77777a7b7c7', 600.00, DEFAULT, 'credit_card'),
    ('aeaaabac-daaa-50aa-bd0b-ababababcbcb', '8e8a8b8c-d888-48aa-bd0b-a88888a8b8c8', 1500.00, DEFAULT, 'paypal');

-- Insert sample data into the Review table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    ('beababac-dbbb-51aa-bd0b-abababababac', '5e5a5b5c-d555-45aa-bd0b-a55555a5b5c5', '1e1a1b1c-d111-41aa-bd0b-a11111a1b1c1', 5, 'Amazing apartment, had a great stay!', DEFAULT),
    ('ceababac-dccc-52aa-bd0b-abababababac', '6e6a6b6c-d666-46aa-bd0b-a66666a6b6c6', '3e3a3b3c-d333-43aa-bd0b-a33333a3b3c3', 4, 'Beautiful house, but the location was a bit remote.', DEFAULT);

-- Insert sample data into the Message table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('deababac-dddd-53aa-bd0b-abababababac', '1e1a1b1c-d111-41aa-bd0b-a11111a1b1c1', '2e2a2b2c-d222-42aa-bd0b-a22222a2b2c2', 'Hi, is the apartment available for December?', DEFAULT),
    ('eeababac-deee-54aa-bd0b-abababababac', '2e2a2b2c-d222-42aa-bd0b-a22222a2b2c2', '1e1a1b1c-d111-41aa-bd0b-a11111a1b1c1', 'Yes, it is available. Feel free to book!', DEFAULT);
