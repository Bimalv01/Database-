CREATE DATABASE IF NOT EXISTS SalesDB;
USE SalesDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    Email VARCHAR(255));
    
desc Customers;
    
CREATE TABLE Orders (
    OrderID INT  auto_increment PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

desc Orders;
drop table orders;
drop table OrderDetails;

CREATE TABLE OrderDetails (
    OrderDetailID INT auto_increment primary KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

desc OrderDetails;

INSERT INTO Customers  VALUES
(1,'bimal', 'bimal@email.com'),
(2,'denin', 'denin@email.com');

select * from Customers;






