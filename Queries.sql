-- Retrieve all products with their categories
SELECT Products.ProductName, Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- Retrieve all orders with user information
SELECT Orders.OrderID, Users.UserName, Orders.OrderDate, Orders.Total
FROM Orders
JOIN Users ON Orders.UserID = Users.UserID;

-- Retrieve all reviews for a specific product
SELECT Reviews.Rating, Reviews.Comment, Users.UserName
FROM Reviews
JOIN Users ON Reviews.UserID = Users.UserID
WHERE Reviews.ProductID = 1;

-- Retrieve total sales per category
SELECT Categories.CategoryName, SUM(OrderItems.Quantity * OrderItems.Price) AS TotalSales
FROM OrderItems
JOIN Products ON OrderItems.ProductID = Products.ProductID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName;
