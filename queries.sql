-- Top 10 products by revenue
SELECT Product_Name, ROUND(SUM(Sales), 2) AS total_revenue
FROM orders
GROUP BY Product_Name
ORDER BY total_revenue DESC
LIMIT 10;

-- Monthly revenue trend
SELECT strftime('%Y-%m', Order_Date) AS month,
       ROUND(SUM(Sales), 2) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;

-- Category profitability
SELECT Category, 
       ROUND(SUM(Sales), 2) AS revenue,
       ROUND(SUM(Profit), 2) AS profit,
       ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS margin_pct
FROM orders
GROUP BY Category;

-- Underperforming segments (negative profit)
SELECT Sub-Category, ROUND(SUM(Profit), 2) AS total_profit
FROM orders
GROUP BY Sub-Category
HAVING total_profit < 0;