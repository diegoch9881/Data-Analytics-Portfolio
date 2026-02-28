# 🏥 Patient Profile & Diagnosis Trends: Healthcare Data Analysis

## 📌 Project Overview
This project presents an analysis of the demographic profile and diagnostic trends of a healthcare clinic. The data pipeline involved cleaning and standardizing temporal variables in Excel, exploring clinical utilization metrics and data groupings through structured queries in MySQL, and performing the final data modeling in Power BI. The resulting interactive dashboard allows users to monitor patient distribution by age bands, break down the Top 10 diagnoses (ICD codes) using cross-filtering by sex, and identify high-utilizer patients along with the frequency of the most performed medical procedures (CPT codes).

## 🛠️ Tech Stack
* **Data Cleaning & Preparation:** Microsoft Excel
* **Relational Database & Exploration:** MySQL
* **Data Modeling & Visualization:** Microsoft Power BI
* **Languages:** SQL, DAX

## 📊 Analytical Goals
The primary objective of this project was to answer the following operational questions:
1. What does the clinic’s patient population look like by age?
2. What are the top diagnoses overall, and how do they break down by age band and sex?
3. How many visits does the average patient have, and who are the "high utilizers"?
4. Which CPT codes (procedures) are performed most often?

## ⚙️ Technical Methodology & Pipeline

### Phase 1: Data Preparation (Excel)
* **Age Calculation:** Utilized the `DATEDIF` function to calculate the exact patient age based on `date_of_birth` and `visit_date` to avoid leap-year and rounding errors.
* **Conditional Logic:** Engineered a new feature (`Age_Band`) using nested `IF` statements to categorize patients into predefined demographic groups (0–17, 18–39, 40–64, 65+).

### Phase 2: Data Exploration & Aggregation (MySQL)
* **Query Structuring:** Executed `GROUP BY` and aggregation functions (`COUNT`, `AVG`) to identify the most frequent ICD and CPT codes.
* **Data Filtering:** Applied the `HAVING` clause to filter grouped data and accurately identify "high utilizers" (patients with >= 4 visits).
* **Advanced Operations:** Developed subqueries within the `FROM` clause to calculate the overall average visits per patient across the entire dataset.

### Phase 3: Data Modeling & Visualization (Power BI)
* **Data Type Auditing:** Transformed dimensional codes (e.g., `cpt_code`) into Text format via Power Query to prevent unintended mathematical aggregations.
* **DAX Implementation:** Created dynamic measures using `DIVIDE`, `COUNT`, and `DISTINCTCOUNT` to calculate the average number of visits per patient.
* **Dashboard Interactivity:** Implemented dynamic cross-filtering using Slicers for `Age_Band` and Visual Level Filters (Top N logic) to provide an intuitive drill-down experience.

## 📈 Dashboard Preview
<img width="1124" height="629" alt="Screenshot_3" src="https://github.com/user-attachments/assets/c10f49c3-2972-49bf-a578-dd6db864857a" />

---
*Author: Diego Alberto Chávez Álvarez*
