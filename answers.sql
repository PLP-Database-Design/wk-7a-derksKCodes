-- Quiz 1: Achieving 1NF (First Normal Form)
CREATE TABLE ProductDetail_1NF
(
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

INSERT INTO
    ProductDetail_1NF
VALUES
    (101, 'John Doe', 'Laptop');

INSERT INTO
    ProductDetail_1NF
VALUES
    (101, 'John Doe', 'Mouse');

INSERT INTO
    ProductDetail_1NF
VALUES
    (102, 'Jane Smith', 'Tablet');

INSERT INTO
    ProductDetail_1NF
VALUES
    (102, 'Jane Smith', 'Keyboard');

INSERT INTO
    ProductDetail_1NF
VALUES
    (102, 'Jane Smith', 'Mouse');

INSERT INTO
    ProductDetail_1NF
VALUES
    (103, 'Emily Clark', 'Phone');

--Quiz 2: Achieving 2NF (Second Normal Form)
--Step 1: Create Orders table to hold OrderID and CustomerName.
CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO
    Orders
VALUES
    (101, 'John Doe');

INSERT INTO
    Orders
VALUES
    (102, 'Jane Smith');

INSERT INTO
    Orders
VALUES
    (103, 'Emily Clark');

--Step 2: Create OrderItems table with composite key (OrderID, Product)
CREATE TABLE OrderItems
(
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders (OrderID)
);

-- Insert product quantities per order
INSERT INTO
    OrderItems
VALUES
    (101, 'Laptop', 2);

INSERT INTO
    OrderItems
VALUES
    (101, 'Mouse', 1);

INSERT INTO
    OrderItems
VALUES
    (102, 'Tablet', 3);

INSERT INTO
    OrderItems
VALUES
    (102, 'Keyboard', 1);

INSERT INTO
    OrderItems
VALUES
    (102, 'Mouse', 2);

INSERT INTO
    OrderItems
VALUES
    (103, 'Phone', 1);