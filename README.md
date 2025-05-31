# 📊 Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀  
This project showcases a complete end-to-end solution for building a modern data warehouse and generating actionable insights. It's designed as a portfolio project that follows industry best practices in data engineering and analytics.

---

## 🏗️ Data Architecture

This project implements the **Medallion Architecture**, which includes three layers:
![Data Warehouse Project drawio (2)](https://github.com/user-attachments/assets/312fad48-0ddc-4d70-9b31-09c4b9a62b18)


- **Bronze Layer**: Raw data ingestion from source systems (CSV files) into a SQL Server database.
- **Silver Layer**: Cleansing, standardization, and normalization of raw data to prepare it for analysis.
- **Gold Layer**: Business-ready data modeled into a **Star Schema** to support reporting and analytics.

---

## 📖 Project Overview

This project includes:

- **Data Architecture**: Designing a modern warehouse using the Medallion architecture.
- **ETL Pipelines**: Building robust ETL processes to ingest and transform data.
- **Data Modeling**: Creating fact and dimension tables optimized for analytics.
- **Analytics & Reporting**: Delivering business insights using SQL-based reports and dashboards.

---

## 🎯 Ideal For

This project is perfect for anyone looking to showcase their skills in:

- SQL Development  
- Data Architecture  
- Data Engineering  
- ETL Pipeline Development  
- Data Modeling  
- Data Analytics

---

## 🛠️ Tools & Resources

> All tools used in this project are **free** and open-source wherever possible.

- **Datasets**: CSV files representing ERP and CRM source data.
- **SQL Server Express**: Lightweight version of SQL Server for hosting your database.
- **SQL Server Management Studio (SSMS)**: GUI for database management.
- **Git & GitHub**: Version control and collaboration.
- **DrawIO**: For creating architecture diagrams, data models, and flows.
- **Notion**: Project planning and task tracking (includes template and project phases).

---

## 🚀 Project Requirements

### 📦 Data Engineering: Building the Data Warehouse

**Objective**:  
Build a modern data warehouse using SQL Server to consolidate sales data and enable data-driven decision-making.

**Specifications**:

- Import ERP and CRM data from CSV files.
- Cleanse and resolve data quality issues.
- Integrate into a unified, user-friendly data model.
- No historization required (focus on current/latest data).
- Provide clear documentation for business and analytics stakeholders.

---

### 📊 Data Analysis: BI, Analytics & Reporting

**Objective**:  
Use SQL to generate insights related to:

- Customer behavior  
- Product performance  
- Sales trends  

---

## 📂 Repository Structure
data-warehouse-project/
│
├── datasets/ # Raw datasets (ERP and CRM)
│
├── docs/ # Documentation and architecture files
│ ├── etl.drawio # ETL process diagram
│ ├── data_architecture.drawio # Overall architecture diagram
│ ├── data_catalog.md # Dataset descriptions and metadata
│ ├── data_flow.drawio # Data flow diagram
│ ├── data_models.drawio # Star schema data models
│ ├── naming-conventions.md # Naming standards
│
├── scripts/ # SQL scripts
│ ├── bronze/ # Ingest raw data
│ ├── silver/ # Data cleaning & transformation
│ ├── gold/ # Analytical modeling
│
├── tests/ # Data quality and testing scripts
│
├── README.md # Project overview and instructions
├── LICENSE # License information
├── .gitignore # Git ignore file
└── requirements.txt # Project dependencies

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
