# Sales Performance Analysis Dashboard

This project focuses on analyzing a company's sales data to identify key trends, top-performing products, regions, and customer segments. It leverages SQL for data preparation and Tableau for interactive data visualization, providing actionable insights for business stakeholders.

## Project Goals

* Extract, clean, and transform raw sales data from an e-commerce context.
* Aggregate data to calculate key performance indicators (KPIs) such as total revenue, profit margins, sales growth, and regional performance.
* Develop interactive dashboards to visualize these KPIs, enabling drill-down analysis.
* Identify opportunities for sales optimization and strategic decision-making.

## Technologies Used

* **SQL:** For data cleaning, transformation, and aggregation. (e.g., MySQL, PostgreSQL, SQLite)
* **Tableau:** For interactive dashboard creation and data visualization.
* **Python (Optional for data generation/scripting):** Used for generating the sample dataset, but can be omitted if working with real data.

## Project Structure

* `README.md`: Project overview and setup instructions.
* `sql_scripts/`: Contains SQL scripts for data cleaning, transformation, and aggregation.
* `data/`: Stores the raw or simulated dataset.
* `tableau_dashboard/`: Placeholder for the Tableau `.twbx` or `.twb` file.

## Setup and Usage

### 1. Data Source

The `data/sample_sales_data.csv` file provides a small sample dataset for demonstration purposes. In a real-world scenario, you would connect to an actual e-commerce database.

### 2. SQL Data Preparation

Navigate to the `sql_scripts/` directory. The `sales_data_preparation.sql` file contains example SQL queries. You would execute these queries against your database to prepare the data for Tableau.

```sql
-- Example: Connect to your database and run these queries
-- Replace 'your_database' with your actual database name

-- Ensure you have appropriate read/write permissions.
