# Superstore Sales Analysis

This report describes a study that analyzed data to find the best-performing products, regions, categories, and customer groups for Superstore. The goal is to help Superstore make more money and stand out from competitors by using the findings from the analysis.

## Business Objectives:

- How can we optimize our profits?
- What are the emerging trends that we can identify?
- How can we take these insights to build recommendations?
- What are the best products, regions, categories, and customer segments for the Superstore to target or avoid in order to increase profitability?

## Dataset:

The data is publicly available through Kaggle under [Superstore Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final).

- Contains 9995 rows with 9994 being pure data and the other one row being the column headers.
- It spans from the 3rd of January 2014 (the first order date) to the 5th of January 2018 (the last shipping date).
- Data includes records of 793 customers.
- The dataset contains 21 columns:
  - Row ID, Order ID, Order Date, Ship Date, Ship Mode, Customer ID, Customer Name, Segment, Postal Code, City, State, Country, Region, Product ID, Category, Sub-Category, Product Name, Sales, Quantity, Discount, and Profit.

## Methodology

We'll adhere to the six steps of Data Analysis:

1. **Ask: Defining the Business Problem**: Identify the most profitable products, regions, categories, and customer segments to target and optimize profitability.
2. **Prepare: Data Assessment**: Utilize the publicly available Superstore dataset from Kaggle, encompassing sales data from 2014 to 2018 for 793 customers across 21 product categories. While the data might not be the most recent, it serves as a valuable resource for analysis. We'll leverage Excel for initial cleaning tasks.
3. **Process: Data Cleaning and Formatting**: Ensure data consistency by:
   - Identifying Missing Values: Utilizing conditional formatting to highlight and address any missing data.
   - Removing Duplicates: Verifying for duplicate entries using Excel functionalities.
   - Formatting Dates and Currencies: Formatting Order Date, Ship Date, Sales, and Profit for accurate analysis.
4. **Analyze**: Employing SQL for in-depth data manipulation and analysis to uncover:
   - Profitability by Product, Category, Region, and Customer Segment: Analyze sales and profit margins to identify the most profitable areas.
   - Sales Trends: Investigate sales trends over time to predict future demand and optimize inventory management.
