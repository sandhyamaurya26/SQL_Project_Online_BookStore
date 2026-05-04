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

