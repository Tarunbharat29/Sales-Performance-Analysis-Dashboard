
-- Total revenue and profit
SELECT 
    SUM(Revenue) AS TotalRevenue,
    SUM(Profit) AS TotalProfit
FROM sales_view;

-- Monthly sales trend
SELECT 
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    SUM(Revenue) AS MonthlyRevenue
FROM sales_view
GROUP BY Month
ORDER BY Month;

-- Sales by Region
SELECT 
    Region,
    SUM(Revenue) AS RegionalRevenue
FROM sales_view
GROUP BY Region;

-- Top 5 products by revenue
SELECT 
    ProductName,
    SUM(Revenue) AS ProductRevenue
FROM sales_view
GROUP BY ProductName
ORDER BY ProductRevenue DESC
LIMIT 5;

-- Profit by customer segment
SELECT 
    Segment,
    SUM(Profit) AS SegmentProfit
FROM sales_view
GROUP BY Segment;
