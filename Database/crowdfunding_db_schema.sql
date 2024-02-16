
-- create category table
CREATE TABLE category(
    category_id VARCHAR(10) NOT NULL PRIMARY KEY,
    category VARCHAR(25) NOT NULL    
);

SELECT *
from category;
-- create the subcategory table
CREATE TABLE subcategory(
    subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(25) NOT NULL
 );
 
SELECT *
from subcategory

--create the contacts table
CREATE TABLE contacts(
    contact_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL
);
SELECT *
from contacts


--create the campaigns table
CREATE TABLE campaigns(
    cf_id INT NOT NULL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(40) NOT NULL,
    description TEXT NOT NULL,
    goal FLOAT4 NOT NULL,
    pledged FLOAT4 NOT NULL,
    outcome VARCHAR(15) NOT NULL,
    backers_count INT,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT *
from campaigns
