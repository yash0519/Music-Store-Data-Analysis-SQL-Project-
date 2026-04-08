# 🎵 Music Store Data Analysis (SQL Project)

## 📌 Project Overview

This project analyzes a digital music store database using SQL to extract actionable insights about customer behavior, sales performance, and content popularity. The focus is on solving realistic business questions using clean, well-structured SQL queries.

---

## 🎯 Objectives

* Understand customer purchasing behavior
* Identify top customers and revenue drivers
* Analyze genre and artist performance
* Explore revenue distribution across countries and cities
* Segment customers based on spending patterns

---

## 🗂️ Dataset Description

The database contains the following tables:

* `customer` – customer information
* `invoice` – transaction records
* `invoice_line` – detailed purchase data
* `track` – song details
* `album` – album information
* `artist` – artist data
* `genre` – music categories
* `media_type` – media formats
* `playlist`, `playlist_track` – playlist relationships
* `employee` – staff details

---

## 🛠️ Tools & Technologies

* SQL (MySQL / PostgreSQL)
* DBMS for querying and analysis

---

## 📊 Analysis Performed

### 🔹 Core Analysis

* Identified senior-most employee
* Analyzed invoice distribution by country
* Extracted highest invoice values
* Found city generating maximum revenue

### 🔹 Customer Analysis

* Identified best customer based on total spending
* Segmented customers into High / Medium / Low spenders using CASE statements
* Ranked customers by total spending using window functions (RANK)

### 🔹 Music & Sales Analysis

* Identified rock music listeners
* Found top artists by number of tracks
* Analyzed tracks longer than average duration
* Calculated revenue contribution by genre

---

## 💡 Key Insights

* A small percentage of customers contribute a significant share of total revenue
* Certain genres consistently generate higher sales, indicating strong user preference
* Revenue is concentrated in specific geographic regions
* Customer segmentation helps identify high-value users for targeted marketing

---

## 📈 Project Structure

```
Music-Data-Analysis/
│── SQL_Queries.sql
│── Dataset/
│── README.md
│── Images/ (optional)
```

---

## 🚀 How to Use

1. Import the dataset into your SQL environment
2. Execute queries from `SQL_Queries.sql`
3. Review outputs and interpret insights

---

## 📌 Future Improvements

* Build a dashboard using Power BI or Tableau
* Add more complex analytical queries (CTEs, advanced window functions)
* Perform time-based trend analysis

---

## 👤 Author

Yash Kanade
Aspiring Data Analyst | SQL | Python | Power BI

---
