library(dplyr)
library(ggplot2)
library(readr)

setwd("D:\\python_40k")
df= read.csv("ecommerce_sales_data_records.csv")

head(df)
tail(df)
str(df)
summary(df)
dim(df)
names(df)

nrow(df)
ncol(df)

colSums(is.na(df))

n_distinct(df$Customer_ID)
n_distinct(df$Product)
n_distinct(df$Category)

df <- df %>%
  mutate(
    Order_Date = as.Date(Order_Date),
    City = ifelse(is.na(City), "Unknown", City),
    Payment_Method = ifelse(is.na(Payment_Method), "Unknown", Payment_Method),
    Month = format(Order_Date, "%Y-%m")
  ) %>%
  group_by(Category) %>%
  mutate(Rating = ifelse(is.na(Rating), median(Rating, na.rm = TRUE), Rating)) %>%
  ungroup()

high_value_orders <- df %>% filter(Sales > 5000)

top_orders <- df %>%
  arrange(desc(Sales)) %>%
  select(Order_ID, Category, Product, Sales) %>%
  slice_head(n = 10)

category_summary <- df %>%
  group_by(Category) %>%
  summarise(
    Total_Sales = sum(Sales),
    Orders = n(),
    Avg_Rating = mean(Rating),
    .groups = "drop"
  ) %>%
  arrange(desc(Total_Sales))

monthly_sales <- df %>%
  group_by(Month) %>%
  summarise(Total_Sales = sum(Sales), .groups = "drop")

city_summary <- df %>%
  group_by(City) %>%
  summarise(Total_Sales = sum(Sales), .groups = "drop") %>%
  arrange(desc(Total_Sales))

# KPIs
cat("Total Sales: ₹", round(sum(df$Sales), 2), "\n")
cat("Orders:", nrow(df), "\n")
cat("Unique Customers:", n_distinct(df$Customer_ID), "\n")
cat("Average Order Value: ₹", round(mean(df$Sales), 2), "\n")

# ggplot2 visualizations
ggplot(category_summary, aes(reorder(Category, Total_Sales), Total_Sales)) +
  geom_col() + coord_flip() +
  labs(title = "Sales by Category", x = "Category", y = "Sales") +
  theme_minimal()

ggplot(monthly_sales,
       aes(as.Date(paste0(Month, "-01")), Total_Sales)) +
  geom_line(linewidth = 1) + geom_point() +
  labs(title = "Monthly Sales Trend", x = "Month", y = "Sales") +
  theme_minimal()

ggplot(city_summary, aes(reorder(City, Total_Sales), Total_Sales)) +
  geom_col() + coord_flip() +
  labs(title = "Sales by City", x = "City", y = "Sales") +
  theme_minimal()

ggplot(df, aes(Sales)) +
  geom_histogram(bins = 30) +
  labs(title = "Sales Distribution", x = "Sales", y = "Orders") +
  theme_minimal()

ggplot(df, aes(Quantity, Sales)) +
  geom_point(alpha = 0.6) +
  labs(title = "Quantity vs Sales", x = "Quantity", y = "Sales") +
  theme_minimal()


