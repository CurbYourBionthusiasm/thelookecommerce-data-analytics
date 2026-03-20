# theLook eCommerce Data Analytics

## Overview
This project analyzes the **theLook eCommerce** dataset to identify revenue patterns, customer behavior, product performance, and business opportunities.

The goal was not only to describe historical performance, but also to translate the analysis into actionable recommendations that could support growth, retention, and better customer targeting.

## Business Objective
The project answers a simple business question:

**What drives revenue in the business, and where should the company focus to improve performance?**

To answer that, I analyzed:
- revenue trends,
- customer concentration,
- product and category performance,
- customer purchasing behavior,
- retention-related opportunities.

## Dataset
The analysis is based on the **theLook eCommerce** public dataset available in Google BigQuery.

The dataset includes information about:
- customers,
- orders,
- order items,
- products,
- inventory,
- events,
- distribution centers.

## Tools Used
- **SQL (BigQuery)** – data extraction, cleaning, KPI calculation, customer and revenue analysis
- **Python / Jupyter Notebook** – additional analysis and data exploration
- **Power BI / visualization tools** – dashboarding and presenting findings
- **GitHub** – project documentation and portfolio presentation

## Analysis Scope
The project focuses on several business areas:

### 1. Revenue Performance
I analyzed total revenue performance and looked for patterns in customer spending and order behavior.

### 2. Customer Analysis
I explored how revenue is distributed across customers and whether the business depends heavily on a small group of high-value buyers.

### 3. Product and Category Performance
I reviewed which products or categories contribute the most to sales and which areas may need optimization.

### 4. Retention Opportunity
I looked at customer behavior from the perspective of repeat purchases and identified where retention improvements could increase revenue.

## Key Findings

### Pareto Analysis
To measure customer revenue concentration, I conducted a Pareto analysis by ranking customers based on total revenue contribution and calculating cumulative revenue share.

**Finding:** The top 20% of customers generate **52.76%** of total revenue.

**Interpretation:** Revenue is moderately concentrated among higher-value customers, but the business does not follow a classic 80/20 pattern. A substantial share of revenue still comes from the broader customer base.

**Business implication:** The company should not focus only on top spenders. In addition to retaining high-value customers, it should also improve repeat purchase frequency among regular customers.

### Customer Revenue Structure
The analysis suggests that growth opportunities are distributed across multiple customer segments rather than concentrated only in a narrow VIP group.

This means broad retention and engagement strategies may be as important as premium customer targeting.

### Strategic Opportunity
Because a meaningful share of revenue comes from regular customers, even small improvements in repeat purchase behavior could create a noticeable uplift in overall revenue.

This makes retention, re-engagement, and purchase frequency important levers for business growth.

## Recommendations
Based on the analysis, I would recommend the following actions:

- Develop retention campaigns for regular customers, not only for top spenders.
- Use segmentation to distinguish high-value, mid-value, and low-frequency customers.
- Increase repeat purchases through personalized offers, email follow-ups, and post-purchase engagement.
- Monitor customer concentration over time to detect whether revenue is becoming more or less dependent on top customers.
- Combine revenue analysis with retention metrics to identify the most scalable growth opportunities.

## Project Structure
```bash
thelookecommerce-data-analytics/
│
├── sql/                # SQL queries used in the analysis
├── notebooks/          # Jupyter notebooks / Python analysis
├── visuals/            # Charts, dashboard screenshots, Pareto chart
├── README.md           # Project documentation
```
## Example Business Questions
This project was designed to answer questions such as:

Which customers contribute the largest share of revenue?

Is revenue concentrated among a small customer segment?

What does the customer revenue distribution suggest about business risk?

Should the company prioritize VIP retention or broader customer retention?

Where are the biggest opportunities for revenue growth?

## Why This Project Matters
This project demonstrates how data analysis can be used to move from raw transactional data to business recommendations.

It combines SQL analysis, customer segmentation thinking, revenue interpretation, and stakeholder-oriented communication in one portfolio case study.
