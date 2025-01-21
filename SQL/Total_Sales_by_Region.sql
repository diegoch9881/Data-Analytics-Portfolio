#Total sales by region

SELECT Region, 
       SUM(`iPhone Sales (in million units)`) AS Total_iPhone_Sales, 
       SUM(`iPad Sales (in million units)`) AS Total_iPad_Sales, 
       SUM(`Mac Sales (in million units)`) AS Total_Mac_Sales
FROM apple_sales_2024
GROUP BY Region
ORDER BY Total_iPhone_Sales DESC;

-'The GROUP BY clause ensures that the aggregation is done at the regional level'
-'The ORDER BY clause orders the results by the total iPhone sales in descending       
order, highlighting the regions with the highest iPhone sales'

-'The results of this query give a clear picture of how Apple’s products are       
performing across regions in 2024, helping to identify regions where iPhone       
sales are the strongest.'
