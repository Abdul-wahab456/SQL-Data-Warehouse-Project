# Data Catalog – Gold Layer

## Overview

The **Gold Layer** represents the business-level data model structured to support analytical and reporting use cases. It contains **dimension tables** and **fact tables** that deliver refined, enriched, and meaningful business data.

---

## Table of Contents

- [1. gold.dim_customers](#1-golddim_customers)
- [2. gold.dim_products](#2-golddim_products)
- [3. gold.fact_sales](#3-goldfact_sales)

---

## 1. `gold.dim_customers`

**Purpose:**  
Stores customer details enriched with demographic and geographic data.

**Columns:**

| Column Name     | Data Type     | Description                                                                 |
|------------------|---------------|-----------------------------------------------------------------------------|
| `customer_key`   | INT           | Surrogate key uniquely identifying each customer record.                   |
| `customer_id`    | INT           | Unique numerical identifier assigned to each customer.                     |
| `customer_number`| NVARCHAR(50)  | Alphanumeric identifier representing the customer.                         |
| `first_name`     | NVARCHAR(50)  | Customer's first name.                                                     |
| `last_name`      | NVARCHAR(50)  | Customer's last name or family name.                                       |
| `country`        | NVARCHAR(50)  | Country of residence (e.g., 'Australia').                                  |
| `marital_status` | NVARCHAR(50)  | Marital status (e.g., 'Married', 'Single').                                |
| `gender`         | NVARCHAR(50)  | Gender of the customer (e.g., 'Male', 'Female', 'n/a').                    |
| `birthdate`      | DATE          | Date of birth (e.g., 1971-10-06).                                           |
| `create_date`    | DATE          | Date when the customer record was created.                                 |

---

## 2. `gold.dim_products`

**Purpose:**  
Provides information about the products and their attributes.

**Columns:**

| Column Name          | Data Type     | Description                                                                 |
|-----------------------|---------------|-----------------------------------------------------------------------------|
| `product_key`         | INT           | Surrogate key uniquely identifying each product record.                    |
| `product_id`          | INT           | Unique product identifier for internal tracking.                           |
| `product_number`      | NVARCHAR(50)  | Alphanumeric product code.                                                 |
| `product_name`        | NVARCHAR(50)  | Name of the product, including type, color, and size.                      |
| `category_id`         | NVARCHAR(50)  | Identifier linking to the product's category.                              |
| `category`            | NVARCHAR(50)  | Broad classification (e.g., Bikes, Components).                            |
| `subcategory`         | NVARCHAR(50)  | Detailed classification (e.g., product type).                              |
| `maintenance_required`| NVARCHAR(50)  | Indicates if maintenance is needed (e.g., 'Yes', 'No').                    |
| `cost`                | INT           | Cost or base price of the product.                                         |
| `product_line`        | NVARCHAR(50)  | Specific product line (e.g., Road, Mountain).                              |
| `start_date`          | DATE          | Date when the product became available.                                    |

---

## 3. `gold.fact_sales`

**Purpose:**  
Stores transactional sales data for analytical purposes.

**Columns:**

| Column Name   | Data Type     | Description                                                                 |
|----------------|---------------|-----------------------------------------------------------------------------|
| `order_number` | NVARCHAR(50)  | Unique identifier for the sales order (e.g., 'SO54496').                   |
| `product_key`  | INT           | Surrogate key linking to `dim_products`.                                   |
| `customer_key` | INT           | Surrogate key linking to `dim_customers`.                                  |
| `order_date`   | DATE          | Date when the order was placed.                                            |
| `shipping_date`| DATE          | Date when the order was shipped.                                           |
| `due_date`     | DATE          | Date when payment was due.                                                 |
| `sales_amount` | INT           | Total value of the sale (e.g., 25).                                        |
| `quantity`     | INT           | Quantity of product ordered.                                               |
| `price`        | INT           | Price per unit of the product (e.g., 25).                                  |

---
