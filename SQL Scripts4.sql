-- Count the number of orders placed by each user
SELECT Users.UserName, COUNT(Orders.OrderID) AS OrderCount
FROM Users
JOIN Orders ON Users.UserID = Orders.UserID
GROUP BY Users.UserName;

-- Retrieve top-rated products
SELECT Products.ProductName, AVG(Reviews.Rating) AS AverageRating
FROM Products
JOIN Reviews ON Products.ProductID = Reviews.ProductID
GROUP BY Products.ProductName
ORDER BY AverageRating DESC;

-- Retrieve users with orders totaling more than $500
SELECT Users.UserName, SUM(Orders.Total) AS TotalSpent
FROM Users
JOIN Orders ON Users.UserID = Orders.UserID
GROUP BY Users.UserName
HAVING TotalSpent > 500;