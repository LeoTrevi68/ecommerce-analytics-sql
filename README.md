# E-commerce Data Analysis (Python + SQL)

This project analyzes an e-commerce dataset to identify key business drivers and validate results using a relational database.

The objective is not only to explore data, but to generate actionable insights and demonstrate how analytical workflows can transition into structured, production-like environments.

---

## Business Problem

E-commerce companies need to understand what drives revenue, customer behavior, and operational performance in order to improve decision-making.

This project focuses on identifying:

- Revenue growth patterns  
- Customer retention behavior  
- Impact of logistics on customer satisfaction  
- Revenue concentration across product categories  

---

## Key Insights

- **Revenue Growth & Maturity**  
  The business shows sustained growth followed by stabilization, indicating a transition into a more mature stage.

- **Low Customer Retention (~3%)**  
  The majority of customers are new, revealing strong dependency on acquisition rather than retention.

- **Delivery Time Impacts Satisfaction**  
  Longer delivery times are associated with lower customer ratings, highlighting logistics as a critical factor.

- **Revenue Concentration**  
  A significant portion of revenue comes from a small number of product categories, indicating both focus and risk.

---

## Technical Approach

### Python (EDA & Analysis)
- Data cleaning and transformation  
- Feature engineering (delivery time, customer classification)  
- Revenue aggregation and trend analysis  
- Visualization of key patterns  

### SQL (Validation & Data Modeling)
- Creation of a relational database (SQLite)  
- Structuring data into multiple tables  
- Reproducing key metrics using SQL queries  
- Ensuring consistency between analytical and database results  

---

## Project Structure

ecommerce-analytics-sql/

│

├── notebooks/

│ └── analysis.ipynb

│

├── sql/

│ └── queries.sql

│

├── data/

│ └── source.txt

│

├── README.md

└── LICENSE


---

## Dataset

Brazilian E-commerce Public Dataset by Olist  
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

The dataset is not included in this repository due to size constraints.

---

## Key Takeaway

This project demonstrates that effective data analysis goes beyond generating insights.

It also requires structuring data, validating results, and ensuring that findings can be reproduced and used in real-world decision-making environments.
