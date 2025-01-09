-- Step 1: Create the Bakery Database
CREATE DATABASE Bakery;

-- Step 2: Use the Bakery Database
USE Bakery;

-- Step 3: Create the Sweets Table

CREATE TABLE Sweet
(id int auto_increment PRIMARY KEY, 
item_name varchar (255) NOT Null, 
price DECIMAL (10,2) NOT NULL);

-- Step 4: Create the Savoury Table

CREATE TABLE Savoury
(id INT AUTO_INCREMENT PRIMARY KEY,
item_name VARCHAR (255) NOT NULL,
price DECIMAL(10,2) NOT NULL,
main_ingredients VARCHAR (255) NOT NULL);

SHOW TABLES 

-- Step 5: Inserting Data into the Sweet Table

INSERT INTO Sweet (item_name, price)
VALUES
('doughnut', 0.5),
('croissant', 0.75),
('pain au chocolat', 0.55),
('cinnamon twirl', 0.45),
('cannoli', 0.88),
('apple tart', 1.12);

-- Step 6: Inserting Data into Savoury Table

INSERT INTO Savoury (item_name, price, main_ingredient)
VALUES
('meat pie', 1.25, 'pork'),
('sausage roll', 1, NULL),
('pasty', 2.45, 'beef');

DESCRIBE Savoury;

ALTER TABLE Savoury MODIFY COLUMN main_ingredients VARCHAR(255) NULL;

INSERT INTO Savoury (item_name, price, main_ingredients)
VALUES
('meat pie', 1.25, 'pork'),
('sausage roll', 1, NULL),
('pasty', 2.45, 'beef');

SELECT * FROM Savoury;

