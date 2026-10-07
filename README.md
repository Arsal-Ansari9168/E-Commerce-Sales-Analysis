# E-Commerce Sales & Customer Analysis

## 📊 Project Overview

This project analyzes **600 e-commerce transactions** using **R programming**. The main goal is to clean, transform, analyze, and visualize sales and customer data to identify useful business insights.

The project uses **dplyr** for data manipulation and **ggplot2** for data visualization.

## 🛠️ Technologies Used

* R
* dplyr
* ggplot2
* readr
* CSV Dataset

## 📁 Dataset

The dataset contains 600 e-commerce transaction records with information such as:

* Order ID
* Order Date
* Customer ID
* Gender
* Age
* City
* Category
* Product
* Quantity
* Unit Price
* Discount
* Sales
* Payment Method
* Order Status
* Rating

## 🔍 Data Analysis

The project includes:

* Data importing and inspection
* Missing-value detection and handling
* Data cleaning and transformation
* High-value order analysis
* Top 10 order analysis
* Category-wise sales analysis
* City-wise sales analysis
* Monthly sales analysis
* Customer rating analysis
* Business KPI calculation

## 📌 dplyr Functions Used

```r
select()
filter()
arrange()
mutate()
group_by()
summarise()
slice_head()
n_distinct()
```

## 📈 ggplot2 Visualizations

The project creates the following visualizations:

1. Sales by Category
2. Monthly Sales Trend
3. Sales by City
4. Sales Distribution
5. Quantity vs Sales

## 📊 Key KPIs

The project calculates:

* Total Sales
* Total Orders
* Unique Customers
* Average Order Value

## 📂 Project Structure

```text
R-Ecommerce-Sales-Analysis/
│
├── ecommerce_sales_data_600_records.csv
├── ecommerce_sales_analysis_short.R
├── category_summary.csv
├── monthly_sales.csv
├── README.md
```

## ▶️ How to Run the Project

### 1. Install R

Download and install R from the official R website.

### 2. Install Required Packages

Run this in RStudio:

```r
install.packages("dplyr")
install.packages("ggplot2")
install.packages("readr")
```

### 3. Open the Project

Keep the `.csv` file and `.R` file in the same folder.

### 4. Run the R Script

Open:

```text
ecommerce_sales_analysis_short.R
```

and run the code in RStudio.

## 🎯 Project Objective

The objective of this project is to demonstrate practical skills in:

* R Programming
* Data Cleaning
* Data Manipulation
* Exploratory Data Analysis (EDA)
* Data Visualization
* Business KPI Analysis

## 👨‍💻 Author

**Arsal Ansari**

B.Sc. Information Technology
