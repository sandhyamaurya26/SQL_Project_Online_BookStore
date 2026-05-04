--Creating Database
CREATE DATABASE Online_Bookstore;

--Switch to Database
\c Online_Bookstore;

--Creating Books table 
DROP TABLE IF EXISTS Books;
CREATE TABLE Books(
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(100),
    Published_Year INT,
    Price NUMERIC(10,2),
    Stock INT
);

--Creating Customers table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(50),        
    Phone VARCHAR(20),
    City VARCHAR(50),
    Country VARCHAR(100)
);

--Creating table orders
DROP TABLE IF EXISTS orders;
CREATE TABLE Orders(
    Order_ID INT,	
    Customer_ID	INT REFERENCES CUSTOMERS(Customer_ID),
    Book_ID	INT REFERENCES BOOKS(Book_ID),
    Order_Date DATE DEFAULT CURRENT_DATE,
    Quantity INT,
    Total_Amount NUMERIC(10,2)
);

--copying data from csv file 
COPY BOOKS(Book_ID,Title,Author,Genre,Published_Year,Price,Stock)
FROM 'C:\SANDHYA\Data Analysis\SQL PROJECT\BOOKS.CSV'
CSV HEADER;


COPY CUSTOMERS(Customer_ID,Name,Email,Phone,City,Country)
FROM 'C:\SANDHYA\Data Analysis\SQL PROJECT\CUSTOMERS.CSV'
CSV HEADER;


COPY CUSTOMERS(Order_ID,Customer_ID,Book_ID,Order_Date,Quantity,Total_Amount)
FROM 'C:\SANDHYA\Data Analysis\SQL PROJECT\ORDERS.CSV'
CSV HEADER;


--Displaying Records

SELECT * FROM Books LIMIT 10;

SELECT * FROM CUSTOMERS LIMIT 10;

SELECT * FROM orders LIMIT 10;



