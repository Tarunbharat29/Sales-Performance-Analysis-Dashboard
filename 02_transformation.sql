
-- Create a transformed view for better analysis
CREATE OR REPLACE VIEW sales_view AS
SELECT 
    o.OrderID,
    o.CustomerID,
    c.Name AS CustomerName,
    c.Segment,
    c.Country,
    o.ProductID,
    p.ProductName,
    p.Category,
    o.Quantity,
    o.Price,
    (o.Quantity * o.Price) AS Revenue,
    (o.Quantity * o.Price - o.Quantity * p.Cost) AS Profit,
    o.OrderDate,
    o.Region
FROM orders o
JOIN customers c ON o.CustomerID = c.CustomerID
JOIN products p ON o.ProductID = p.ProductID;
