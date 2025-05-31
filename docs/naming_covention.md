# Naming Conventions

This document outlines the naming conventions used for schemas, tables, views, columns, and other objects in the data warehouse to ensure consistency, clarity, and maintainability.

---

## Table of Contents

- [General Principles](#general-principles)
- [Table Naming Conventions](#table-naming-conventions)
  - [Bronze Rules](#bronze-rules)
  - [Silver Rules](#silver-rules)
  - [Gold Rules](#gold-rules)
- [Column Naming Conventions](#column-naming-conventions)
  - [Surrogate Keys](#surrogate-keys)
  - [Technical Columns](#technical-columns)
- [Stored Procedure Naming](#stored-procedure-naming)
- [Glossary of Category Patterns](#glossary-of-category-patterns)

---

## General Principles

- **Naming Conventions:** Use `snake_case` (lowercase letters with underscores).
- **Language:** All names must be in **English**.
- **Avoid Reserved Words:** Do **not** use SQL reserved words as object names.

---

## Table Naming Conventions

### Bronze Rules

- All table names **must start with the source system name**.
- Table names should **match the original names** in the source system.
  
**Pattern:**


- `<sourcesystem>`: Name of the source system (e.g., `crm`, `erp`).
- `<entity>`: Exact table name from the source system.

**Example:**

---

### Silver Rules

- Same as Bronze layer: table names must **start with the source system name** and **retain original naming**.

**Pattern:**
<sourcesystem>_<entity>


**Example:**
erp_sales_data → Sales data extracted from ERP system.


- `<layer>`: Represents the data layer (`bronze`, `silver`, or `gold`).

**Examples:**

- `load_bronze` → Loads data into Bronze layer.
- `load_silver` → Loads data into Silver layer.
- `load_gold` → Loads data into Gold layer.

---

## Glossary of Category Patterns

| Pattern   | Meaning           | Example(s)                             |
|-----------|-------------------|----------------------------------------|
| `dim_`    | Dimension table    | `dim_customer`, `dim_product`          |
| `fact_`   | Fact table         | `fact_sales`, `fact_inventory`         |
| `report_` | Reporting table    | `report_customers`, `report_sales_monthly` |

---



