# Normalization of Airbnb Database

## Steps Followed

### First Normal Form (1NF)
- Ensured atomic values: no multivalued attributes.
- Created separate tables for repeating data such as user phone numbers.

### Second Normal Form (2NF)
- Removed partial dependency by introducing a single primary key (e.g., booking_id) instead of composite keys.

### Third Normal Form (3NF)
- Removed transitive dependencies by creating separate tables for dependent attributes like City.

---

## Final Normalized Tables

1. User(user_id, full_name, email, password, created_at, updated_at)  
2. User_Phone(phone_id, user_id, phone_number)  
3. Property(property_id, owner_id, title, description, address, city_id, price_per_night, created_at, updated_at)  
4. City(city_id, city_name, zipcode)  
5. Booking(booking_id, user_id, property_id, start_date, end_date, status, created_at)  
6. Payment(payment_id, booking_id, amount, payment_date, payment_method, status)  
7. Review(review_id, booking_id, user_id, rating, comment, created_at)

---

## Benefits of Normalization
- Reduces data redundancy.
- Improves data integrity.
- Makes database more scalable and consistent.