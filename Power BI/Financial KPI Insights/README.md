# Operational Performance KPI Insights | Tableau Professional Portfolio

## 📌 Project Overview
This end-to-end Tableau project was engineered to solve a common leadership challenge: transforming fragmented service desk data into a centralized, actionable performance management tool. Developed for a Help Desk Manager, this dashboard provides a high-level view of operational health while allowing for granular drill-downs into individual agent productivity.

## 🔗 Interactive Visualization
👉 **[View Live Dashboard on Tableau Public](https://public.tableau.com/views/CallCenterMonthlyOperationalKPIInsights/Dashboard?:language=es-ES&:sid=&:display_count=n&:origin=viz_share_link)**

---

## 💼 Business Case & Objectives
The primary objective was to move beyond static reporting and create a dynamic environment to track two main pillars:
1. **Workforce Efficiency:** Monitoring how employees handle their workload and identifying high performers.
2. **Operational Trends:** Understanding call volume patterns to optimize resource allocation and staffing.

### Key Business Questions Answered:
* How does the current month's satisfaction rating compare to historical peaks?
* Which agents are maintaining high resolution rates under heavy call volumes?
* What are the peak operational hours that require additional coverage?

---

## 🛠️ Technical Implementation & Methodology
To mirror the analytical depth of an enterprise-level report, I utilized several advanced Tableau features:

### 1. Level of Detail (LOD) Expressions
I implemented **LOD FIXED** expressions to solve the "Monthly KPI" challenge. This allowed me to:
* Isolate the **Maximum Date** in the entire dataset: `{ FIXED : MAX([Date]) }`.
* Compare individual row-level metrics against global monthly targets, ensuring filters don't "break" the baseline comparisons.

### 2. Feature Engineering & Custom Calculations
* **Resolution Rate Optimization:** Created boolean logic fields to calculate precise resolution percentages, filtering out unanswered calls to avoid data skew.
* **Temporal Analysis:** Developed custom time-bins for "Speed of Answer" and "Call Hour" to identify critical service windows.

### 3. Performance & Architecture
* **Data Extraction:** Utilized a Tableau Data Extract (.hyper) to maximize query speed and dashboard responsiveness.
* **Packaged Workbook (.twbx):** Integrated data and metadata into a single portable file for seamless repository sharing.

---

## 📊 Dashboard Insights
The analysis is categorized into specialized views:
* **Satisfaction Rating (Current Month):** Real-time monitoring of customer feedback.
* **Call Volume Analytics:** Trends analyzed by week, day, and hour.
* **Agent Performance Scorecards:** Metrics for Resolution Rate, Total Resolved Calls, and Speed of Answer.

---
**Developed by:** Diego Chavez  
*Data Analyst Portfolio | Python • SQL • Power BI • Tableau*
