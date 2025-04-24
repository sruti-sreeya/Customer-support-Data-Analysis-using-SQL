# Customer-support-Data-Analysis-using-SQL
A data analysis project using SQL on a Customer Support dataset as part of a Data Analyst Internship. This project demonstrates skills in writing queries using SELECT, JOIN, GROUP BY, subqueries, indexes and more using MySQL Workbench.

# 🧠 Task 3: SQL for Data Analysis (Customer Support Dataset)

## 📌 Internship Task Overview
This project was completed as part of the Data Analyst Virtual Internship. The goal was to perform SQL-based analysis on a structured dataset using tools like MySQL Workbench.

---

## 📂 Dataset
**Name:** Customer Support Dataset  
**Source:**  [Kaggle - Customer Support Dataset](https://www.kaggle.com/)  

---

## 🧰 Tools & Technologies
- MySQL Workbench
- SQL (Structured Query Language)
- Excel / CSV for dataset visualization 

---

## 🛠️ Features & Queries Performed
  
### ✅ Data Extraction & Filtering
- `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY` usage
-  Schema inspection with `DESCRIBE support_data`
- Filtered tickets by status, priority, or date ranges

### 🔁 Joins
- INNER JOIN: Combined support data with agent hierarchy details  
- LEFT JOIN: Included all tickets even without hierarchy info  
- RIGHT JOIN: Ensured all agents were shown even if they had no tickets

### 📊 Aggregations
- Counted number of tickets per agent
- Calculated total revenue and average CSAT score

### 🔍 Subqueries
- Used to find insights like the most active support agent

### 👁 Views
- Created views like `low_csat_tickets` and `agent_info` to simplify analysis
  
### ⚡ Optimization
- Discussed index strategies on `ticket_id`, `customer_id`, and `created_at`

---


## 📚 Learning Outcomes
- Enhanced SQL skills in SELECT, WHERE, GROUP BY, ORDER BY
- Applied different types of JOINS effectively
- Learned to create and use SQL Views
- Practiced using subqueries and optimized queries using indexes

---


## ✍️ Author
**Name:** Srutisreeya Jena  

