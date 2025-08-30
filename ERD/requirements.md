# Task 0: Define Entities and Relationships in ER Diagram

## 1. Entities and Attributes
Below are the main entities for the Airbnb-like database and their attributes:

### User
- *Primary Key:* user_id
- Attributes: full_name, email, phone, password, created_at, updated_at

### Property
- *Primary Key:* property_id
- *Foreign Key:* owner_id → user.user_id
- Attributes: title, description, address, city, price_per_night, created_at, updated_at

### Booking
- *Primary Key:* booking_id
- *Foreign Keys:* user_id → user.user_id, property_id → property.property_id
- Attributes: start_date, end_date, status, created_at

### Payment
- *Primary Key:* payment_id
- *Foreign Key:* booking_id → booking.booking_id
- Attributes: amount, payment_date, payment_method, status

### Review
- *Primary Key:* review_id
- *Foreign Keys:* booking_id → booking.booking_id, user_id → user.user_id
- Attributes: rating, comment, created_at

---

## 2. Relationships
- *User → Property*: One user can own many properties (1:M)
- *User → Booking*: One user can make many bookings (1:M)
- *Property → Booking*: One property can have many bookings (1:M)
- *Booking → Payment*: One booking has one payment (1:1)
- *Booking → Review*: One booking can have one review (1:1)

---

## 3. ER Diagram (Text Representation)