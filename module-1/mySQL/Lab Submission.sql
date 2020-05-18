USE car_dealership
CREATE TABLE cars
(
	car_id int PRIMARY KEY
    manufacter varchar(255) NOT NULL
    model varchar(255) NOT NULL
    year DATE NOT NULL
    color varchar(255)
);
CREATE TABLE customers
(
	cust_id int PRIMARY KEY
    cust_name varchar(255) NOT NULL
    phone_num int NOT NULL
    email varchar(255) 
    address varchar(255)
    city varchar(255)
    province varchar(255)
    country varchar(255)
    zip_code int
);
CREATE TABLE salespersons
(
	staff_id int PRIMARY KEY
    staff_name varchar(255) NOT NULL
    store_id int NOT NULL
);
CREATE TABLE invoices
(
	inv_num int PRIMARY KEY
    inv_date date NOT NULL
    car_id int NOT NULL
    cust_id int NOT NULL
    staff_id int NOT NULL
);

USE car_dealership
INSERT INTO cars
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Red');
INSERT INTO customers
('10001', 'Pablo Picasso', '+34 636 17 63 82', -, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045')
INSERT INTO salespersons
('00001', 'Petey Cruiser', 'Madrid');
INSERT INTO invoices
('852399038', '22-08-2018', '0', '1');

-- I had problems with this lab, didn't manage to create the tables. This was my attempt