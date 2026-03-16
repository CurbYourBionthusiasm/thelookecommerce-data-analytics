# Advanced E-commerce Analytics – thelook_ecommerce

## Project Goal
End-to-end business analytics project using SQL (BigQuery) and Python.
The goal is to analyze customer purchasing behavior and revenue patterns in an e-commerce dataset and generate actionable business insights.

## Dataset
Public dataset available in Google BigQuery:

`bigquery-public-data.thelook_ecommerce`

The dataset contains information about:

- customers
- orders
- order items
- products
- timestamps and order status

## Tools
- SQL (Google BigQuery)
- Python (pandas, matplotlib, seaborn)
- Jupyter Notebooks
## Project Structure
```text
sql/
├── 01_data_quality_and_exploration.sql
├── 02_monthly_kpis.sql
├── 03_aov_distribution.sql
├── 04_customer_behavior.sql

notebooks/
├── aov_distribution.ipynb
├── customer_behavior.ipynb

data/
├── revenue_per_order.csv
├── orders_per_customer.csv
```
## Analyses Performed

### 1. Data Quality and Exploration
- validation of order statuses
- validation of joins between tables
- identification of potential outliers

### 2. Revenue and KPI Analysis
- revenue trends
- monthly order volume
- average order value (AOV)

### 3. Order Value Distribution
- histogram of order values
- comparison of mean vs median
- identification of long-tail distribution

### 4. Customer Behavior Analysis
- distribution of orders per customer
- repeat purchase rate
- analysis of customer retention potential

## Key Insights
- The distribution of order value is strongly right-skewed.
- The majority of customers place only one order.
- Repeat purchases represent a relatively small share of customers.
  
## Business Recommendations
- Increase average order value through product bundling and cross-selling.
- Improve customer retention through loyalty programs or personalized offers.

## Status
🚧 In progress
