# Call Center Monthly Operational KPI Insights

## 📌 Project Overview
This project was developed to provide a Call Center (Help Desk) Manager with a comprehensive tool to track employee performance and overall call operations. The dashboard transforms raw data into actionable insights, helping leadership identify high-performing agents and operational bottlenecks.

## 🔗 Live Interactive Dashboard
👉 **[View Interactive Dashboard on Tableau Public](https://public.tableau.com/views/CallCenterMonthlyOperationalKPIInsights/Dashboard?:language=es-ES&:sid=&:display_count=n&:origin=viz_share_link)**

---

## 💡 Business Scenario
A Manager needed to monitor how employees were performing and obtain general information about call volumes. The challenge was that requirements were high-level; therefore, I designed a suite of KPIs to define "success" for the department, focusing on:
* **Efficiency:** How many calls are handled and how quickly.
* **Effectiveness:** How many issues are actually resolved.
* **Satisfaction:** How customers rate the service they receive.

## 🛠️ Data Transformation & Technical Implementation
To achieve a deep level of analysis, I performed extensive data cleaning and feature engineering within Tableau:

* **LOD Expressions (FIXED):** Implemented Level of Detail calculations to compare current month metrics against historical maximums, ensuring the "Monthly" requirement was met dynamically.
* **Custom Dimensions:** Created new calculated fields to categorize "Hour of Call" and "Resolution Status" for better granularity.
* **Data Extraction:** Utilized a Tableau Data Extract (.hyper) within a packaged workbook (.twbx) to optimize performance and ensure portability.

## 📊 Key Performance Indicators (KPIs)
The dashboard is divided into several analytical views:
* **Agent Productivity:** Breakdown of calls answered vs. resolved by individual agents.
* **Call Volume Trends:** Hourly and daily distribution of calls to identify peak service times.
* **Satisfaction Rating:** Monthly tracking of customer feedback to ensure service quality.
* **Resolution Rates:** A percentage-based view of successfully closed tickets.

## 📁 Repository Structure
* `Call Center Monthly Operational KPI Insights.twbx`: The full packaged Tableau workbook (includes data).
* `README.md`: Project documentation and links.

---
**Author:** Diego Chavez  
*Data Analyst Portfolio*
