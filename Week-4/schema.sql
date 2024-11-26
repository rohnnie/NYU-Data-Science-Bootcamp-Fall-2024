CREATE TABLE ITEMS (
    Item_id INT PRIMARY KEY,
    Item_name VARCHAR(255),
    Price DECIMAL(10, 2),
    Department VARCHAR(50)
);

-- Create CUSTOMERS table
CREATE TABLE CUSTOMERS (
    Customer_id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Address VARCHAR(255)
);

-- Create SALES table
CREATE TABLE SALES (
    Date DATE,
    Order_id INT PRIMARY KEY,
    Item_id INT,
    Customer_id INT,
    Quantity INT,
    Revenue DECIMAL(10, 2),
    FOREIGN KEY (Item_id) REFERENCES ITEMS(Item_id),
    FOREIGN KEY (Customer_id) REFERENCES CUSTOMERS(Customer_id)
);

-- Insert sample data into ITEMS table
INSERT INTO ITEMS (Item_id, Item_name, Price, Department) VALUES
(1, 'Laptop', 1200.00, 'Electronics'),
(2, 'Smartphone', 800.00, 'Electronics'),
(3, 'Headphones', 100.00, 'Electronics'),
(4, 'T-shirt', 20.00, 'Clothing'),
(5, 'Jeans', 50.00, 'Clothing');

-- Insert sample data into CUSTOMERS table
INSERT INTO CUSTOMERS (Customer_id, First_name, Last_name, Address) VALUES
(1, 'John', 'Doe', '123 Main St, Anytown, USA'),
(2, 'Jane', 'Smith', '456 Elm St, Othertown, USA'),
(3, 'Alice', 'Johnson', '789 Maple St, Yetanothertown, USA');

-- Insert sample data into SALES table
INSERT INTO SALES (Date, Order_id, Item_id, Customer_id, Quantity, Revenue) VALUES
('2024-03-01', 1001, 1, 1, 2, 2400.00),
('2024-03-05', 1002, 2, 2, 1, 800.00),
('2024-03-10', 1003, 3, 3, 3, 300.00),
('2024-03-15', 1004, 4, 1, 5, 100.00),
('2024-03-20', 1005, 5, 2, 2, 100.00);

INSERT INTO SALES (Date, Item_id, Customer_id, Quantity, Revenue) VALUES
('2023-03-18', 1, 1, 2, 2400.00),
('2023-03-18', 2, 2, 1, 800.00),
('2023-03-18', 3, 3, 3, 300.00),
('2023-01-10', 4, 1, 5, 100.00),
('2023-02-15', 5, 2, 2, 100.00),
('2022-05-20', 1, 1, 3, 3600.00),
('2022-06-25', 2, 2, 2, 1600.00),
('2022-07-30', 3, 3, 4, 400.00),
('2022-08-05', 4, 1, 6, 120.00),
('2022-09-10', 5, 2, 3, 150.00);