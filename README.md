 E-Commerce Sales Analysis (SQL & BigQuery)

Overview
This project analyzes transactional data from a Brazilian e-commerce company (Olist dataset) to evaluate revenue performance, customer behavior, product contribution, and payment methods.

The analysis was conducted using SQL in Google BigQuery, applying advanced analytical techniques to extract business insights.

---

 Business Objectives
- Analyze monthly revenue trends  
- Identify the worst-performing month  
- Evaluate revenue concentration by product category  
- Identify high-value customers  
- Segment customers based on spending  
- Analyze payment method performance  

---

 Tools & Technologies
- SQL (Google BigQuery)
- R (Data Visualization)
- GitHub (Version Control)

---

Dataset
The dataset used is the **Olist Brazilian E-commerce Dataset**, including:
- Orders  
- Customers  
- Order Items  
- Products  
- Payments  

Only **delivered orders** were considered to ensure revenue accuracy.

---

Analysis Process
1. Data cleaning and filtering (delivered orders only)  
2. Revenue aggregation by month  
3. MoM growth calculation using `LAG()`  
4. Product-level revenue analysis (handling JOIN duplication)  
5. Customer segmentation using `NTILE()`  
6. Payment method performance analysis  

---

 Key Analysis

Monthly Revenue
- Calculated total revenue per month  
- Computed Month-over-Month growth  

Product Analysis
- Identified top-performing categories  
- Solved JOIN duplication using price + freight_value  

Customer Segmentation
- Ranked customers using `RANK()`  
- Segmented customers:
  - VIP (Top 10%)
  - Regular
  - Low Value  

Payment Analysis
- Identified dominant payment method  
- Calculated revenue share  
- Computed Average Order Value (AOV)  

---

 Key Insights
- Revenue is highly concentrated in a few product categories  
- A small percentage of customers (VIP) generates most revenue  
- Strong dependency on credit card payments  
- Monthly revenue shows seasonal volatility  

---

Strategic Recommendations
- Implement loyalty programs for VIP customers  
- Diversify payment methods to reduce risk  
- Launch campaigns in low-performing months  
- Expand high-performing product categories  

---

 Project Structure
- `queries.sql` → SQL queries  
- `dataset.csv` → Dataset (or link)  
- `visualizations/` → Charts (if included)  

---

Future Improvements
- Build interactive dashboard (Power BI / Tableau)  
- Add predictive sales analysis  
- Include customer retention modeling  
