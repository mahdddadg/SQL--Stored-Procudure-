# SQL Server Customer Summary Stored Procedure

A SQL Server stored procedure project focused on customer analytics, data cleanup, reporting, and error handling .

Created by **Mahdi Dehlaghi — Data Analyst**

---

## Overview

This project contains a SQL Server stored procedure designed to generate customer summary reports by country.

The procedure performs:

* Data validation and cleanup
* Customer analytics
* Sales aggregation
* Reporting
* Error handling
* SQL Server procedural programming

It demonstrates practical use of T-SQL for database reporting and operational monitoring.

---

## Main Features

### Customer Summary Reporting

The stored procedure generates summary statistics for customers from a selected country.

**Included Metrics:**

* Total customers
* Average customer score
* Total orders
* Total sales

---

### Data Cleanup

Automatically detects and updates NULL customer scores before calculations.

**Benefits:**

* Cleaner analytics
* More accurate averages
* Improved data consistency

---

### Error Handling

Implements SQL Server `TRY...CATCH` blocks for safer execution.

**Captured Details:**

* Error message
* Error number
* Error line
* Error procedure

---

### Parameterized Execution

Supports dynamic reporting using a country parameter.

Example:

```sql
EXEC customer_summery @country = 'Germany';
```

---

## Technologies Used

* Microsoft SQL Server
* T-SQL
* Stored Procedures
* TRY...CATCH Error Handling
* Aggregate Functions
* SQL Joins

---

## Skills Demonstrated

* SQL Server Development
* Stored Procedure Design
* Data Cleaning
* Aggregate Reporting
* Error Handling
* Query Optimization Concepts
* Database Analytics
* T-SQL Programming

---

## Project Structure

```bash
.
├── SQLQuery3.sql
└── README.md
```

---

## Key SQL Concepts Used

### Aggregate Functions

* `COUNT()`
* `SUM()`
* `AVG()`

### Conditional Logic

* `IF EXISTS`
* `BEGIN...END`

### Error Handling

* `TRY...CATCH`
* `ERROR_MESSAGE()`
* `ERROR_NUMBER()`
* `ERROR_LINE()`
* `ERROR_PROCEDURE()`

### Joins

* `INNER JOIN`

---

## Example Use Cases

This project can be used for:

* Customer reporting systems
* Sales monitoring dashboards
* SQL Server learning projects
* Data quality validation
* Database administration practice
* Analytics automation

---

## Example Execution

```sql
EXEC customer_summery;

EXEC customer_summery @country = 'USA';

EXEC customer_summery @country = 'Germany';
```

---

## About the Author

### Mahdi Dehlaghi

**Data Analyst**

Focused on:

* SQL Server development
* Data analytics
* Query optimization
* Database reporting
* Data-driven solutions
* Performance monitoring

---

## License

This project is open-source and available for educational and professional use.

---

## Contributions

Contributions and suggestions are welcome.

If you find this project useful, consid
