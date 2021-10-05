DROP DATABASE IF EXISTS SaleManagemen;
CREATE DATABASE		SaleManagemen;
USE				SaleManagemen;

CREATE TABLE	Customers(
	customer_id			INT,	
	first_name			VARCHAR(50),
	last_name			VARCHAR(50),
	email_address		VARCHAR(100),
	number_of_complains	INT
);
CREATE TABLE	Sales(
	purchase_number		INT,
	date_of_purchase	DATE,
	customer_id			INT,
	item_code			VARCHAR(50)
);
CREATE TABLE	Items(
	item_code					VARCHAR(50),
	item						VARCHAR(50),
	until_price_usd				INT,
	company_id					VARCHAR(50),
	company						VARCHAR(50),
	headquarters_phone_number	VARCHAR(100)
);
