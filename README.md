# Sales-Management

### Transforming Raw Sales Data into Actionable Business Insights

---

## Project Overview

The **Sales Management Dashboard** is an end-to-end **Power BI project** designed to showcase how data can drive smarter sales decisions.
This project demonstrates the **complete analytics lifecycle** — from **data cleaning in SQL**, **data modeling**, and **DAX calculations**, to building **interactive Power BI dashboards** for executives and sales managers.

It replicates a **real-world enterprise scenario** where a sales department tracks product performance, customer trends, and budget targets across time.

---

## Project Objectives

* Design a **data model** using **fact and dimension tables** for scalable reporting.
* Cleanse and transform raw data using **SQL scripts** and integrate multiple data sources.
* Build **dynamic and visually engaging Power BI dashboards** to analyze sales, customers, and products.
* Enable users to **filter and drill down** by product, customer, and region.
* Compare **actual sales vs budget** and identify growth opportunities.

---

## Data Model Architecture

This project follows a **Star Schema** design:

**Fact Table:**

* `FactInternetSalesCleansed` – contains transaction-level sales data.

**Dimension Tables:**

* `DimCustomerCleansed` – customer attributes and segmentation.
* `DimProductCleansed` – product categories and hierarchies.
* `DimCalendarCleansed` – time intelligence (date, month, quarter, year).

The model ensures high performance for analytical queries and clear relationships between business entities.

---

## Key Business Insights

*  **Total Sales Performance** – actual vs budget, YOY growth.
*  **Top Customers & Products** – contribution to total revenue.
*  **Sales by Geography / Region** – identify strong and weak markets.
*  **Sales Trend Over Time** – monthly and quarterly analysis.
*  **KPI Tracking** – profitability, average order value, and sales growth rate.

---

##  Repository Structure

```
/Sales-Management
│
├── SQL Scripts
│   ├── DimCalendarCleansed.sql
│   ├── DimCustomerCleansed.sql
│   ├── DimProductCleansed.sql
│   ├── FactInternetSalesCleansed.sql
│
├── Power BI Report
│   └── InternetSales.pbix
│
├── Documentation
│   ├── Business Demand Overview and User Stories.pdf
│   ├── Business Request.pdf
│
└── Data Samples
    └── SalesBudget.xlsx
```

---

## Tools & Technologies

| Category           | Tools Used                            |
| ------------------ | ------------------------------------- |
| Data Cleaning      | SQL (T-SQL)                           |
| Data Modeling      | Star Schema (Fact & Dimension Tables) |
| Data Visualization | Microsoft Power BI                    |
| Data Source        | Excel, SQL Database                   |
| Business Logic     | DAX Measures & Calculated Columns     |

---

## Skills Used

* Data Modeling (Star Schema Design)
* SQL for Data Transformation
* Power Query for ETL
* DAX (Time Intelligence, KPI Calculation, Dynamic Measures)
* Dashboard Design and UX Best Practices
* Data Storytelling and Business Understanding

---

## Sample KPIs & DAX Measures

| KPI                     | DAX Expression                                                                         |
| ----------------------- | -------------------------------------------------------------------------------------- |
| **Total Sales**         | `Total Sales = SUM(FactInternetSalesCleansed[SalesAmount])`                            |
| **Sales vs Budget %**   | `Sales vs Budget % = DIVIDE([Total Sales] - [Budget Amount], [Budget Amount])`         |
| **YOY Growth**          | `YOY Growth = CALCULATE([Total Sales], SAMEPERIODLASTYEAR(DimCalendarCleansed[Date]))` |
| **Average Order Value** | `AOV = DIVIDE([Total Sales], [Total Orders])`                                          |

---

## Dashboard Features

* Dynamic filters for **Product**, **Customer**, **Date**, and **Region**
* Drill-through capability to view individual customer or product details
* KPI cards and trend lines for **budget vs actual** tracking
* Clean, professional UI design suitable for management reporting

---

## Business Use Case

> The Sales Department of an organization wants to replace static Excel reports with an **interactive Power BI dashboard**.
>
> They need a system to visualize:
>
> * Sales performance by product and customer
> * Comparison against targets and budgets
> * Trends over time to identify seasonal demand
> * Easy filtering for each salesperson and product line

---

## Outcome

* Replaced manual reports with **automated, real-time dashboards**.
* Delivered **360° visibility** into sales performance.
* Empowered management to make **data-backed strategic decisions**.

---

## Future Enhancements

* Add **Row-Level Security (RLS)** for salesperson-level access.
* Integrate **Power BI Service** for scheduled refresh and cloud sharing.
* Extend to include **Sales Forecasting** using DAX or AI insights.

---

## About the Developer

**Rakesh Men**
Power BI Developer <br> | Data Analyst | SQL & Visualization Expert

> Passionate about turning data into stories that drive business success.
> Skilled in Power BI, SQL, DAX, and dashboard design.

**Email:** rakeshmen@outlook.com <br>
**LinkedIn:** https://www.linkedin.com/in/rakeshmen/
