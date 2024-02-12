USE trips;

CREATE TABLE users (
	id INT,
	name varchar(255) NOT NULL COMMENT 'User name',
	email varchar(100) NOT NULL UNIQUE COMMENT 'User email',
	address varchar(50) NOT NULL COMMENT 'User address',
	birth_date DATE NOT NULL COMMENT 'User birth date'
);

CREATE TABLE destinations (
	id INT,
	name varchar(255) NOT NULL COMMENT 'Destination name',
	description varchar(255) NOT NULL COMMENT 'Destination description'
);

CREATE TABLE reservations (
	id INT COMMENT 'Unique identifier of reservations',
	user_id INT COMMENT 'Reference to the ID of the user making the reservation',
	destination_id INT COMMENT 'Reference to the ID of the reservation destination',
	date DATE COMMENT 'Reservation date',
	status varchar(255) DEFAULT 'pending' COMMENT 'Reservation status (confirmed, pending, canceled, etc.)'
);

/* CREATE */
INSERT INTO users (id, name, email, address, birth_date) VALUES (1, "Fulano", "fulano@email.com", "Av. das Rosas, 120 - Neighborhood X/SP", "1990-10-05");
INSERT INTO destinations (id, name, description) VALUES (1, "Mosqueiro Beach", "A cool place for a fun trip!");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (1, 1, 1, "2024-11-11", "pending");

/* READ */
SELECT * FROM users 
WHERE id = 1 OR name LIKE "%Maria%";

SELECT * FROM destinations;
SELECT * FROM reservations;

