-'The project utilized two datasets: apple_sales_2024,       
which contains sales data for various Apple products,        
and region_population, which provides population data        
for different regions'

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

-'I used a JOIN function to integrate these datasets based on the common field (Region)'
-'The population of each region was used to calculate a new metric: iPhone Sales Per Capita,       
which divides the total iPhone sales by the population'

-'The analysis reveals which regions have the highest relative adoption of iPhones        
compared to their population, enabling a better understanding of market potential        
and performance. This approach helps in decision-making in areas such as marketing       
strategy and resource allocation.'
