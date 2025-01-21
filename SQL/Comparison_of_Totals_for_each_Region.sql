-'In this project, I aimed to analyze and compare the total sales and        
services revenue across different regions for Apple products in 2024.        
The dataset contains sales data for various Apple products, including        
iPhones, iPads, Macs, and Wearables, along with revenue from Apple’s       
services. The primary goal was to aggregate and summarize these values       
by region to identify regional patterns in sales performance.'

#Comparison_of_Totals_for_each_Region
SELECT DISTINCT Region, 
       SUM(`Services Revenue (in billion $)`) AS Total_Services_Revenue, 
       SUM(`iPhone Sales (in million units)`) AS Total_iPhone_Sales,
       SUM(`Mac Sales (in million units)`) AS Total_Mac_Sales
FROM apple_sales_2024
GROUP BY Region
ORDER BY Region ASC;

-'I Used SQL aggregation functions (SUM()) and grouping to summarize large       
datasets and identify trends based on different categories (in this case, regions)'
-'I was able to compare how Apple’s revenue and product sales varied across       
regions, providing a clear view of where the company had stronger or weaker performance'

-'The result of this query gives an overview of the total revenue        
from services, iPhone sales, and Mac sales for each region, which is        
valuable for understanding the regional dynamics of Apple’s business in 2024'
