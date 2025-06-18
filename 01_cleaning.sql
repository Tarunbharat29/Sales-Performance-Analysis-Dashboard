
-- Remove duplicates (if any)
DELETE FROM orders
WHERE OrderID NOT IN (
    SELECT * FROM (
        SELECT MIN(OrderID) FROM orders GROUP BY OrderID
    ) AS keep_rows
);

-- Handle NULL values in Quantity and Price
UPDATE orders SET Quantity = 1 WHERE Quantity IS NULL;
UPDATE orders SET Price = 0.0 WHERE Price IS NULL;

-- Ensure foreign keys exist
DELETE FROM orders WHERE CustomerID NOT IN (SELECT CustomerID FROM customers);
DELETE FROM orders WHERE ProductID NOT IN (SELECT ProductID FROM products);
