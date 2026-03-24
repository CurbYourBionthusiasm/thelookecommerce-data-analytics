# eCommerce Revenue Analysis

## Executive Summary

The analysis shows that revenue is primarily driven by a large base of new customers, while returning customers contribute a smaller but highly valuable share.

Revenue distribution across products is moderately concentrated, with the top 20% of products generating approximately 57% of total revenue.

The key growth opportunities lie in improving customer retention and increasing average order value (AOV), particularly in lower-performing product categories.

---

## Business Problem

The goal of this analysis was to understand:

- What drives revenue in an eCommerce business?
- Are customers or products the main growth driver?
- Where are the biggest opportunities to increase revenue?

---

## Dataset

The analysis is based on the public **theLook eCommerce dataset**, including:

- Orders and order items
- Product categories
- Customer activity

---

## Key Metrics

- Total Revenue: $2,692,875
- Total Orders: 31,288
- Total Users: 27,688
- Average Order Value (AOV): $86.07
- Revenue per User: $97.26
- Orders per User: 1.13

---

## Key Insights

### 1. Customer Retention Drives Revenue

- New customers: 88% of users, 78% of revenue
- Returning customers: 12% of users, 22% of revenue

Returning customers generate significantly higher revenue per user, indicating strong potential in retention strategies.

---

### 2. Moderate Product Concentration

The top 20% of products generate approximately 57% of total revenue.

This suggests a balanced distribution of revenue across products rather than strong dependence on a small subset.

---

### 3. Category Performance Differences

Top categories (high revenue per order):
- Outerwear & Coats: $151.87
- Suits & Sport Coats: $130.02
- Jeans: $103.27

Low-performing categories:
- Socks & Hosiery: $17.29
- Socks: $21.31
- Leggings: $27.04

This indicates significant variation in monetization potential.

---

## Business Impact

- Improving retention can increase revenue without increasing acquisition costs
- Increasing AOV directly impacts total revenue
- Product optimization can improve efficiency

---

## Recommendations

### 1. Improve Customer Retention

- Loyalty programs
- Personalized campaigns
- Re-engagement strategies 

---

### 2. Increase Average Order Value (AOV)

- Product bundling 
- Cross-selling and upselling 
- Free shipping thresholds

---

### 3. Optimize Product Portfolio

- Promote high-performing products 
- Reduce low-performing items
- Improve pricing strategy

---

## Suggested Experiments

- A/B test bundling strategies
- Test discounts for returning customers
- Optimize checkout recommendations
- Evaluate removing low-performing products

---

## Technical Approach

- SQL was used to calculate all core business metrics 
- Data was aggregated at appropriate levels (order, user, product) 
- Analysis focused on business questions rather than raw exploration 
