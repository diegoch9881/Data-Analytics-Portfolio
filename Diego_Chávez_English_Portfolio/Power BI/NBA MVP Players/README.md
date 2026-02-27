# 🏀 NBA Player Stats Analysis: Who's the Real MVP?

## 📌 Project Overview
This data analytics project explores historical NBA player statistics to uncover trends across different basketball eras, evaluate player impact (rookies vs. veterans), and determine the most dominant players and franchises. The core of this project is a custom-built, weighted mathematical algorithm designed to calculate a "True MVP Score," challenging official league narratives with empirical data.

## 🛠️ Tech Stack & Workflow
- **Data Cleaning & Preprocessing:** Microsoft Excel (Categorical grouping, data type auditing).
- **Relational Database & EDA:** MySQL (DDL/DML operations, complex querying).
- **Data Visualization & BI:** Power BI (Direct database connection, interactive dashboard design).

## 🧠 Advanced SQL Techniques Applied
To extract deep insights without relying on BI tool formulas, all heavy computational logic was pushed to the backend (MySQL) using:
- **Window Functions:** `LAG()` for season-over-season performance tracking and `ROW_NUMBER()` for historical ranking.
- **Common Table Expressions (CTEs):** To structure multi-step aggregations and improve query readability.
- **Conditional Logic & Aggregations:** `CASE` statements for dynamic grouping and `GROUP BY` for statistical era comparisons.

## 📊 Key Findings & Business Logic
1. **The "Small Ball" Era Confirmed:** Data proves a significant shift in the 2020s. Player average weight dropped by 2.7 lbs and height decreased by 2.1 inches compared to the 1990s, highlighting the modern league's prioritization of agility and perimeter shooting.
2. **Experience Equals Impact:** Veterans (30+ years old) consistently yield a higher net rating (-0.90) and point production compared to Rookies (≤22 years old, -4.50 net rating), demonstrating the value of established talent over draft potential.
3. **Franchise Dominance:** The Golden State Warriors (GSW) lead the historical dataset, producing 37 individual player seasons with 20+ PPG, reflecting their high-volume offensive system.
4. **The True MVP Algorithm:** A weighted index was created: `(PTS * 0.4) + ((REB + AST) * 0.3) + (TS% * 0.3)`. 
   - *Insight:* For the 2022-23 season, the model ranked Nikola Jokic (37.3 score) narrowly above the official MVP, Joel Embiid (37.2 score), rewarding Jokic's superior true shooting efficiency and playmaking.
5. **The All-Time Dream Team:** Extracting the absolute peak season of every player, the ultimate data-driven starting five consists of: Nikola Jokic, Joel Embiid, James Harden, Giannis Antetokounmpo, and Luka Doncic.

## 📈 Dashboard Preview
*(Add a screenshot of your Power BI dashboard here)*
`![NBA Dashboard](link-to-your-image.png)`

## 🚀 How to Run
1. Clone the repository.
2. Import the raw dataset into a local MySQL instance.
3. Execute the provided `.sql` scripts to generate the analytical views and MVP algorithm.
4. Open the `.pbix` file in Power BI Desktop and update the MySQL localhost credentials to view the interactive report.
