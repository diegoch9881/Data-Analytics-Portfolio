# Total_Sales_by_State_with_conditions
SELECT Region, 
       COUNT(*) AS Total_States, 
       SUM(`iPhone Sales (in million units)`) AS Total_iPhone_Sales,
       SUM(`Mac Sales (in million units)`) AS Total_Mac_Sales
FROM apple_sales_2024
WHERE Region IN ('Europe')
  AND `iPhone Sales (in million units)` > 6
  AND `Mac Sales (in million units)` > 5
GROUP BY Region
ORDER BY Total_iPhone_Sales DESC;

-'The query calculates the total sales for iPhones and Macs in Europe, but with specific conditions:'
       -'Only states with iPhone sales greater than 6 million units and Mac sales greater        
       than 5 million units are considered.'

-'The COUNT(*) function counts the number of states meeting these conditions within the region'
-'The GROUP BY clause groups the results by region (Europe)'
-'The ORDER BY clause orders the results by total iPhone sales in descending order,        
allowing us to prioritize the top states in terms of iPhone sales'

-'The results provide insights into the top-performing states within Europe        
based on iPhone and Mac sales. This analysis can guide strategic decisions        
on which states to target for further marketing and sales initiatives'
