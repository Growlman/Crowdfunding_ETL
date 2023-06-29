DROP TABLE category;
DROP TABLE campaign;
DROP TABLE contact;
DROP TABLE subcategory;

CREATE TABLE category (
	category_id VARCHAR (100),
	category VARCHAR (100),
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR (100),
	subcategory VARCHAR (100),
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE contact (
	contact_id INT,
	first_name VARCHAR (100),
	last_name VARCHAR (100),
	email VARCHAR (100),
	PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR (100),
	description VARCHAR (250),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR (100),
	backers_count INT,
	country VARCHAR (100),
	currency VARCHAR (100),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR (100),
	subcategory_id VARCHAR (100),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contact(contact_id)
);
SELECT *from category
SELECT *from subcategory
SELECT *from contact
SELECT *from campaign