# SQL Data Warehouse & Analytics Project

## 📌 Overview

This project demonstrates the design and implementation of a modern **SQL Server Data Warehouse** using the **Medallion Architecture (Bronze, Silver, and Gold layers)**.

The goal is to build a scalable and well-structured data warehouse that transforms raw source data into clean, reliable, and analytics-ready data. The project also includes analytical queries and reporting to extract meaningful business insights.

---

## 🏗️ Data Warehouse Architecture

The project follows a **Medallion Architecture** consisting of three main layers:

### 🥉 Bronze Layer — Raw Data

The Bronze layer stores data exactly as it is received from the source systems.

* Loads raw data from source files.
* Preserves the original structure and values.
* Performs minimal transformations.
* Acts as the historical/raw data storage layer.

### 🥈 Silver Layer — Cleaned & Transformed Data

The Silver layer is responsible for cleaning and transforming the raw Bronze data.

* Data cleansing and standardization.
* Handling missing and invalid values.
* Removing duplicates.
* Data type transformations.
* Applying business rules.
* Preparing data for analytical use.

### 🥇 Gold Layer — Business & Analytics

The Gold layer contains business-ready data designed for analytics and reporting.

* Creates business-oriented tables and views.
* Applies final business transformations.
* Implements dimensional modeling where appropriate.
* Provides clean and consistent data for analytics.
* Supports business intelligence and reporting.

---

## 🔄 ETL Process

The project implements an ETL pipeline that follows:

**Source Data → Bronze → Silver → Gold → Analytics**

1. Extract raw data from source systems.
2. Load the data into the Bronze layer.
3. Clean and transform the data in the Silver layer.
4. Apply business logic and create analytical structures in the Gold layer.
5. Perform analytical queries to generate meaningful insights.

---

## 📊 Analytics

The Gold layer is used to perform different types of business analysis, including:

* Customer analysis
* Product performance
* Sales analysis
* Revenue trends
* Customer behavior
* Product and category performance
* Time-based analysis
* Ranking and comparative analysis

The analytical queries are designed to demonstrate the use of SQL techniques such as:

* Aggregations
* `GROUP BY`
* Window Functions
* CTEs
* Subqueries
* Joins
* Ranking Functions
* Date and Time Functions
* Conditional Logic

---

## 🛠️ Technologies Used

* **SQL Server**
* **T-SQL**
* **SQL Server Management Studio (SSMS)**
* **Git & GitHub**
* **Medallion Architecture**
* **ETL / Data Warehousing**
* **Dimensional Modeling**

---

## 📁 Project Structure

```text
SQL-Data-Warehouse/
│
├── datasets/
│   └── source_data/
│
├── docs/
│   └── documentation/
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   ├── gold/
│   └── analytics/
│
├── tests/
│
├── README.md
└── LICENSE
```

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Build a complete SQL Data Warehouse from raw data.
* Implement Bronze, Silver, and Gold data layers.
* Develop an efficient ETL process using SQL.
* Practice data cleaning and transformation.
* Apply data warehouse and dimensional modeling concepts.
* Create analytics-ready datasets.
* Generate meaningful business insights using SQL.
* Follow professional data engineering practices.

---

## 📈 Key Learning Outcomes

Through this project, I gained practical experience in:

* Data Warehouse Architecture
* ETL Development
* Data Cleaning & Transformation
* SQL Server & T-SQL
* Dimensional Modeling
* Fact and Dimension Tables
* Data Quality Validation
* Analytical SQL
* Business Intelligence Concepts
* Git & GitHub Project Management

---

## 📄 License

This project is licensed under the **MIT License**.

See the [LICENSE](LICENSE) file for more information.

---

## 👨‍💻 Author

**Abdelrahman Emad**

This project was created as a practical implementation of SQL Data Warehousing, ETL, and Data Analytics concepts.

