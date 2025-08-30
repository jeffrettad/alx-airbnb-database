Data for Airbnb Database

-- 1. Users
INSERT INTO Users (full_name, email, password)
VALUES
('John Doe', 'john@example.com', 'password123'),
('Alice Smith', 'alice@example.com', 'password456'),
('Bob Johnson', 'bob@example.com', 'password789');

-- 2. User Phones
INSERT INTO User_Phone (user_id, phone_number)
VALUES
(1, '+1234567890'),
(2, '+1987654321'),
(3, '+1122334455');

-- 3. Cities
INSERT INTO City (city_name, zipcode)
VALUES
('New York', '10001'),
('Los Angeles', '90001'),
('Chicago', '60007');

-- 4. Properties
INSERT INTO Property (owner_id, title, description, address, city_id, price_per_night)
VALUES
(1, 'Cozy Apartment', 'A nice and cozy apartment in New York', '123 Main St', 1, 120.00),
(2, 'Luxury Villa', 'A spacious villa in Los Angeles', '456 Sunset Blvd', 2, 350.00),
(3, 'Downtown Condo', 'Modern condo in Chicago downtown', '789 Lakeshore Dr', 3, 200.00);

-- 5. Bookings
INSERT INTO Booking (user_id, property_id, start_date, end_date, status)
VALUES
(2, 1, '2025-09-10', '2025-09-15', 'confirmed'),
(3, 2, '2025-09-12', '2025-09-14', 'pending'),
(1, 3, '2025-09-20', '2025-09-25', 'confirmed');

-- 6. Payments
INSERT INTO Payment (booking_id, amount, payment_method, status)
VALUES
(1, 600.00, 'credit_card', 'completed'),
(2, 700.00, 'paypal', 'completed'),
(3, 1000.00, 'bank_transfer', 'pending');

-- 7. Reviews
INSERT INTO Review (booking_id, user_id, rating, comment)
VALUES
(1, 2, 5, 'Amazing stay! Highly recommended.'),
(2, 3, 4, 'Nice place, but a bit pricey.'),
(3, 1, 5, 'Perfect location and clean rooms.');