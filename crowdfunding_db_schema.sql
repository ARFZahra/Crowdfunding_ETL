-- Drop tables if they exist
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS subCategory;
DROP TABLE IF EXISTS category;


-- Create the Contact table
CREATE TABLE contact (
    contact_id int PRIMARY KEY,
    first_name VARCHAR(256) NOT NULL,
    last_name VARCHAR(256) NOT NULL,
    email VARCHAR(256) NOT NULL
);

SELECT *
FROM contact;


-- Create the Category table
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,  
    category VARCHAR(256) NOT NULL   
);

-- Select all records from the Category table
SELECT *
FROM category;


-- Create the Category table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(256) NOT NULL   
);

SELECT *
FROM subcategory;


-- Create the Campaign table
CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(256) NOT NULL,
    description VARCHAR(256) NOT NULL,
    goal DECIMAL NOT NULL,
    pledged DECIMAL NOT NULL,
    outcome VARCHAR(256) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(256) NOT NULL,
    currency VARCHAR(5) NOT NULL,
    launch_date VARCHAR(50) NOT NULL,
    end_date VARCHAR(50) NOT NULL,
    category_id VARCHAR(256) NOT NULL,
    subcategory_id VARCHAR(256) NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES Contact(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES SubCategory(subcategory_id)
);

SELECT *
FROM campaign;