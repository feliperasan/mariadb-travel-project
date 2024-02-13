CREATE DATABASE trips;

USE trips;

CREATE TABLE users (
	id INT,
	name varchar(255) NOT NULL COMMENT 'User name',
	email varchar(100) NOT NULL UNIQUE COMMENT 'User email',
	address varchar(50) NOT NULL COMMENT 'User address',
	date_of_birth DATE NOT NULL COMMENT 'User birth date'
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
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (1, "Fulano", "fulano@email.com", "Av. das Rosas, 120 - Neighborhood X/SP", "1990-10-05");
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (2, "Ciclano", "ciclano@email.com", "Rua dos Lírios, 50 - Neighborhood Y/RJ", "1985-03-15");
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (3, "Beltrano", "beltrano@email.com", "Travessa das Margaridas, 80 - Neighborhood Z/SP", "1978-07-20");
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (4, "Maria", "maria@email.com", "Av. das Violetas, 200 - Neighborhood W/RJ", "1995-12-12");
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (5, "José", "jose@email.com", "Rua das Tulipas, 30 - Neighborhood T/MG", "1982-09-28");
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (6, "Ana", "ana@email.com", "Alameda das Orquídeas, 10 - Neighborhood P/RS", "1998-04-03");
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (7, "João", "joao@email.com", "Av. dos Cravos, 15 - Neighborhood K/BA", "1993-01-18");
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (8, "Carla", "carla@email.com", "Rua das Rosas, 40 - Neighborhood L/PR", "1989-06-25");
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (9, "Paulo", "paulo@email.com", "Travessa dos Girassóis, 25 - Neighborhood M/SC", "1980-11-08");
INSERT INTO users (id, name, email, address, date_of_birth) VALUES (10, "Mariana", "mariana@email.com", "Av. das Margaridas, 60 - Neighborhood N/RS", "1975-02-14");

INSERT INTO destinations (id, name, description) VALUES (1, "Mosqueiro Beach", "A cool place to hang out!");
INSERT INTO destinations (id, name, description) VALUES (2, "Serra do Cipó", "A beautiful mountainous region to explore nature!");
INSERT INTO destinations (id, name, description) VALUES (3, "Chapada dos Veadeiros", "An ecological paradise with stunning waterfalls!");
INSERT INTO destinations (id, name, description) VALUES (4, "Fernando de Noronha", "A paradisiacal archipelago with crystal clear waters!");
INSERT INTO destinations (id, name, description) VALUES (5, "Bonito - MS", "A must-visit destination for eco-tourism and diving enthusiasts!");
INSERT INTO destinations (id, name, description) VALUES (6, "Jericoacoara", "A magical place with dunes, lagoons, and paradisiacal beaches!");
INSERT INTO destinations (id, name, description) VALUES (7, "Gramado", "A charming city with a European climate and beautiful gardens!");
INSERT INTO destinations (id, name, description) VALUES (8, "Pantanal", "The world's largest wetland, full of wildlife!");
INSERT INTO destinations (id, name, description) VALUES (9, "Lençóis Maranhenses", "A desert of white dunes and stunning blue lagoons!");
INSERT INTO destinations (id, name, description) VALUES (10, "Ilha Grande", "A tropical paradise with deserted beaches and trails in the Atlantic forest!");

INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (1, 1, 1, "2024-11-11", "pending");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (2, 2, 2, "2024-10-20", "confirmed");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (3, 3, 3, "2024-09-15", "confirmed");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (4, 4, 4, "2024-12-05", "pending");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (5, 5, 5, "2024-11-30", "confirmed");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (6, 6, 6, "2024-08-12", "confirmed");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (7, 7, 7, "2024-07-25", "canceled");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (8, 8, 8, "2024-06-18", "confirmed");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (9, 9, 9, "2024-05-22", "pending");
INSERT INTO reservations (id, user_id, destination_id, date, status) VALUES (10, 10, 10, "2024-04-10", "confirmed");


/* READ */
SELECT * FROM users 
WHERE id = 1 OR name LIKE "%Maria%";

SELECT * FROM destinations;
SELECT * FROM reservations;
SELECT * FROM users;

/* UPDATE */
UPDATE users
SET name = "Marina"
WHERE name = "Mariana";

/* DELETE */
DELETE FROM destinations
WHERE name = "Praia de Mosqueiro";

/* NEW TABLE USERS TO MIGRATE DATAS FROM USERS TO NEW_USERS*/
CREATE TABLE new_users (
	id INT,
	name varchar(255) NOT NULL,
	email varchar(255) NOT NULL UNIQUE,
	address varchar(100) NOT NULL,
	date_of_birth DATE NOT NULL
	
);

/* MASSIVE MIGRATE ROWS */
INSERT INTO new_users (id, name, email, address, date_of_birth)
SELECT id, name, email, address, date_of_birth 
FROM users;

SELECT * FROM new_users;

/* DROP TABLE */
DROP TABLE users;

/* ALTER TABLE */
ALTER TABLE new_users RENAME users;

ALTER TABLE users MODIFY COLUMN address VARCHAR(150);

/* PRIMARY KEY AND AUTO_INCREMENT */
ALTER TABLE users 
MODIFY COLUMN id INT AUTO_INCREMENT, 
ADD PRIMARY KEY (id);

ALTER TABLE destinations
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

ALTER TABLE reservations
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);


/* FOREIGN KEY */
ALTER TABLE reservations
ADD CONSTRAINT fk_reservations_users
FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE reservations
ADD CONSTRAINT fk_reservations_destinations
FOREIGN KEY (destination_id) REFERENCES destinations(id);


/* CREATE */
INSERT INTO reservations (user_id, destination_id, date) VALUES (12, 12, "2023-11-11"); /* ERROR */
INSERT INTO reservations (user_id, destination_id, date) VALUES (1, 1, "2023-11-11");


/* CASCADE EXCLUSION */
ALTER TABLE reservations 
ADD CONSTRAINT fk_users
FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE CASCADE;

ALTER TABLE reservations DROP CONSTRAINT fk_reservations_users;

DELETE FROM users
WHERE id = 1;

