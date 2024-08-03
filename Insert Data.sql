USE StyleSplash;

INSERT INTO Users (UserID, UserName, Email, Password)
VALUES
(1, 'JohnDoe', 'john@example.com', 'password123'),
(2, 'JaneSmith', 'jane@example.com', 'password456');

INSERT INTO Categories (CategoryID, CategoryName)
VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing');

INSERT INTO Products (ProductID, ProductName, Price, Stock, CategoryID)
VALUES
(1, 'Smartphone', 699.99, 50, 1),
(2, 'Laptop', 1299.99, 30, 1),
(3, 'Novel', 19.99, 100, 2),
(4, 'T-Shirt', 9.99, 200, 3);

INSERT INTO Orders (OrderID, UserID, Total)
VALUES
(1, 1, 719.98),
(2, 2, 39.98);

INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity, Price)
VALUES
(1, 1, 1, 1, 699.99),
(2, 1, 3, 1, 19.99),
(3, 2, 3, 2, 19.99);

INSERT INTO Reviews (ReviewID, UserID, ProductID, Rating, Comment)
VALUES
(1, 1, 1, 5, 'Excellent smartphone!'),
(2, 2, 3, 4, 'Great read, but a bit pricey.');
