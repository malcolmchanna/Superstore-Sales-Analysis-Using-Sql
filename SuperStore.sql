-- Importing the data and verifying the first few rows
SELECT * FROM superstore;

-- Total sales and profits of each year
SELECT 
    YEAR(orderDate) AS Year,
    ROUND(SUM(sales), 2) AS Total_Sale,
    ROUND(SUM(profit), 2) AS Total_Profit
FROM Superstore
GROUP BY YEAR(OrderDate)
ORDER BY Year;

-- Total profits and sales per quarter
SELECT
    YEAR(orderdate) AS year,
    CASE
        WHEN MONTH(orderDate) IN (1,2,3) THEN 'Q1'
        WHEN MONTH(orderDate) IN (4,5,6) THEN 'Q2'
        WHEN MONTH(orderDate) IN (7,8,9) THEN 'Q3'
        ELSE 'Q4'
    END AS Quarter,
    ROUND(SUM(sales), 2) AS Total_Sale,
    ROUND(SUM(profit), 2) AS Total_Profit
FROM Superstore
GROUP BY YEAR(orderdate), 
    CASE
        WHEN MONTH(orderDate) IN (1,2,3) THEN 'Q1'
        WHEN MONTH(orderDate) IN (4,5,6) THEN 'Q2'
        WHEN MONTH(orderDate) IN (7,8,9) THEN 'Q3'
        ELSE 'Q4'
    END
ORDER BY year, Quarter;

-- Region with the highest sales and profits
SELECT 
    Region AS Region_Name,
    ROUND(SUM(Sales), 2) AS Total_Sale,
    ROUND(SUM(profit), 2) AS Total_profit
FROM Superstore
GROUP BY Region
ORDER BY Total_sale DESC, Total_profit DESC;

-- State with the highest and lowest sales and profits
-- Top 10 States
SELECT 
    TOP 10 state AS StateName,
    ROUND(SUM(Sales), 2) AS Total_sale,
    ROUND(SUM(profit), 2) AS Total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM Superstore
GROUP BY State
ORDER BY Total_profit DESC;

-- Bottom 10 States
SELECT 
    TOP 10 state AS StateName,
    ROUND(SUM(Sales), 2) AS Total_sale,
    ROUND(SUM(profit), 2) AS Total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM Superstore
GROUP BY State
ORDER BY Total_profit ASC;

-- City with the highest and lowest sales and profits
-- Top 10 Cities
SELECT 
    TOP 10 City AS City_Name,
    ROUND(SUM(Sales), 2) AS Total_sale,
    ROUND(SUM(profit), 2) AS Total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM Superstore
GROUP BY City
ORDER BY Total_profit DESC;

-- Bottom 10 Cities
SELECT 
    TOP 10 City AS City_Name,
    ROUND(SUM(Sales), 2) AS Total_sale,
    ROUND(SUM(profit), 2) AS Total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM Superstore
GROUP BY City
ORDER BY Total_profit ASC;

-- Category with the highest sales and profits in each region and state
-- Total sales and profits by category
SELECT 
    category, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit, 
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin
FROM superstore
GROUP BY category
ORDER BY total_profit DESC;

-- Total sales and profits by region and category
SELECT 
    region, 
    category, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY region, category
ORDER BY total_profit DESC;

-- Subcategory with the highest sales and profits in each region and state
-- Total sales and profits by subcategory
SELECT 
    subcategory, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit, 
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin
FROM superstore
GROUP BY subcategory
ORDER BY total_profit DESC;

-- Total sales and profits by region and subcategory
SELECT 
    Region,
    subcategory, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit, 
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin
FROM superstore
GROUP BY subcategory, Region
ORDER BY total_profit DESC;

-- Product names that are the most and least profitable
-- Most Profitable Products
SELECT 
    TOP 10 productname, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY productname
ORDER BY total_profit DESC;

-- Least Profitable Products
SELECT 
    TOP 10 productname, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY productname
ORDER BY total_profit ASC;

-- Segment contributing most to profits and sales
SELECT 
    segment, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM superstore
GROUP BY segment
ORDER BY total_profit DESC;

-- Total number of unique customers
SELECT COUNT(DISTINCT CustomerID) AS Custormer_uniqueID FROM Superstore;

-- Total customers per region
SELECT 
    region, 
    COUNT(DISTINCT customerid) AS total_customers
FROM superstore
GROUP BY region
ORDER BY total_customers DESC;

-- Total customers per state (Top 10)
SELECT 
    TOP 10 state, 
    COUNT(DISTINCT customerid) AS total_customers
FROM superstore
GROUP BY state
ORDER BY total_customers DESC;

-- Customers in the rewards program
SELECT 
    TOP 5 customerid, 
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY customerid
ORDER BY total_profit DESC;
