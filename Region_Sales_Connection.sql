#Total_Sales_per_Region
SELECT a.Region, 
       SUM(a.`iPhone Sales (in million units)`) AS Total_iPhone_Sales, 
       SUM(a.`Services Revenue (in billion $)`) AS Total_Services_Revenue,
       r.`Population (in millions)`,
       (SUM(a.`iPhone Sales (in million units)`) / r.`Population (in millions)`) AS iPhone_Sales_Per_Capita
FROM apple_sales_2024 a
JOIN region_population r
ON a.Region = r.Region
GROUP BY a.Region, r.`Population (in millions)`
ORDER BY iPhone_Sales_Per_Capita DESC;

