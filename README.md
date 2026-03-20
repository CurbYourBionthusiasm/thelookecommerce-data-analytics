# theLook eCommerce Data Analytics

## Overview

This project presents an end-to-end analysis of an e-commerce dataset using SQL (BigQuery) and Python.

The goal is to understand revenue patterns, customer purchasing behavior, and identify practical opportunities to improve business performance.

---

## Business Objective

The project addresses a simple question:

**What drives revenue, and where should the business focus to improve performance?**

To answer this, the analysis focuses on:

* revenue trends
* order value distribution
* customer purchasing behavior
* revenue concentration across customers

---

## Dataset

Source: Google BigQuery public dataset
`bigquery-public-data.thelook_ecommerce`

The dataset includes:

* orders and order items
* customers
* products
* timestamps and order status

---

## Tools Used

* SQL (BigQuery) – data extraction, KPI calculation, aggregations
* Python (pandas, matplotlib, seaborn) – analysis and visualization
* Jupyter Notebooks – exploration and presentation
* GitHub – project documentation

---

## Project Structure

```text
project/
│
├── data
│   ├── orders_per_customer.csv
│   ├── revenue_per_customer.csv
│   └── revenue_per_order.csv
│
├── notebooks
│   ├── AOV_analysis.ipynb
│   ├── customer_behaviour_analysis.ipynb
│   └── pareto_analysis.ipynb
│
├── sql
│   ├── 01_data_quality_and_exploration.sql
│   ├── 02_monthly_KPIs.sql
│   ├── 03_aov_distribution.sql
│   ├── 04_customer_behaviour.sql
│   └── 05_pareto_analysis.sql
│
├── README.md
└── .gitignore
```

---

## Analysis Scope

### 1. Data Quality & Exploration

* validated order statuses
* ensured consistency between orders and order_items
* checked for duplicates and missing relationships

### 2. Revenue & KPI Analysis

* analyzed monthly revenue and order volume
* defined valid transactions (`status = 'Complete'`)
* calculated key metrics such as AOV

### 3. Order Value Distribution (AOV)

* analyzed distribution of order values
* compared mean vs median
* identified right-skewed (long-tail) distribution

### 4. Customer Behavior

* calculated number of orders per customer
* analyzed distribution of purchasing frequency
* calculated repeat purchase rate

### 5. Pareto Analysis (Revenue Concentration)

* ranked customers by total revenue
* calculated cumulative revenue contribution
* measured revenue concentration across customer base

---

## Key Insights

* Order value distribution is right-skewed (mean > median).
* Most customers place only one order (~88%).
* Repeat customers represent a relatively small share (~12%).
* Revenue is moderately concentrated — top 20% of customers generate ~52.76% of revenue.

---

## Business Recommendations

* Focus on improving customer retention, not only acquiring new users.
* Increase purchase frequency among regular customers.
* Do not rely solely on top customers — revenue is not heavily concentrated.
* Small improvements in repeat behavior can have a meaningful impact on total revenue.

---

## Example Business Questions

This analysis answers questions such as:

* How is revenue distributed across customers?
* Do a small group of customers drive most of the revenue?
* How frequently do customers make purchases?
* Where are the biggest opportunities for revenue growth?

---

## Project Value

This project demonstrates:

* practical SQL analytics (aggregation, filtering, data validation)
* ability to move from raw data to business insights
* clear communication of findings and recommendations

---

## Status

Core analysis completed. Potential extensions include cohort retention and churn modeling.
