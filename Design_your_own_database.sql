-- create schema
CREATE SCHEMA production;
go

-- create tables
CREATE TABLE production.categories (
	category_id INT IDENTITY (1, 1) PRIMARY KEY,
	category_name VARCHAR (255) NOT NULL
);

CREATE TABLE production.brands (
	brand_id INT IDENTITY (1, 1) PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);

CREATE TABLE production.products (
	product_id INT IDENTITY (1, 1) PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES production.categories (category_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (brand_id) REFERENCES production.brands (brand_id) ON DELETE CASCADE ON UPDATE CASCADE
);

use Cars4Sale;

SET IDENTITY_INSERT production.brands ON;  

INSERT INTO production.brands(brand_id,brand_name) VALUES(1,'Fiat')
INSERT INTO production.brands(brand_id,brand_name) VALUES(2,'Ford')
INSERT INTO production.brands(brand_id,brand_name) VALUES(3,'Kia')
INSERT INTO production.brands(brand_id,brand_name) VALUES(4,'Porsche')
INSERT INTO production.brands(brand_id,brand_name) VALUES(5,'MG')
INSERT INTO production.brands(brand_id,brand_name) VALUES(6,'Mazda')
INSERT INTO production.brands(brand_id,brand_name) VALUES(7,'Tesla')
INSERT INTO production.brands(brand_id,brand_name) VALUES(8,'Lotus')
INSERT INTO production.brands(brand_id,brand_name) VALUES(9,'Volvo')

SET IDENTITY_INSERT production.brands OFF;  

SET IDENTITY_INSERT production.categories ON;  
INSERT INTO production.categories(category_id,category_name) VALUES(1,'Sedan')
INSERT INTO production.categories(category_id,category_name) VALUES(2,'Coupe')
INSERT INTO production.categories(category_id,category_name) VALUES(3,'Sports Car')
INSERT INTO production.categories(category_id,category_name) VALUES(4,'Station Wagon')
INSERT INTO production.categories(category_id,category_name) VALUES(5,'Hatchback')
INSERT INTO production.categories(category_id,category_name) VALUES(6,'Convertible')
INSERT INTO production.categories(category_id,category_name) VALUES(7,'Sport-Utility Vehicle (SUV)')
INSERT INTO production.categories(category_id,category_name) VALUES(8,'Minivan')
INSERT INTO production.categories(category_id,category_name) VALUES(9,'Pickup Truck')

SET IDENTITY_INSERT production.categories OFF;  

SET IDENTITY_INSERT production.products ON;
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(1,'Volvo S60 2.4 - 2001',9,1,2001,13900)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(2,'Tesla model 3 - 2019',7,2,2019,470000)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(3,'Lotus Esprit 3 - 1984',8,3,1984,419900)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(4,'Mazda 6 2.0 Sky-Active - 2013',6,4,2013,89900)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(5,'MG 4 Long Range Luxury - 2023',5,5,2023,421740)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(6,'Porsche 718 Spyder - 2023',4,6,2023,1291900)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(7,'Kia Niro Hybrid 1.6 Advance Plus - 2022',3,7,2022,309300)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(8,'Ford S-Max TDCi - 2013',2,8,2013,128900)
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(9,'Fiat Strada 1.9 D - 2005',1,9,2016,2999.99)

SET IDENTITY_INSERT production.products OFF;
