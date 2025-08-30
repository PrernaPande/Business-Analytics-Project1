# Business-Analytics-Sales Performance Analysis
# Introduction 
This project was developed using the AdventureWorks dataset, a fictitious multinational company that manufactures and sells bicycles and cycling accessories. The initiative aimed to improve Internet Sales reporting by replacing static reports with interactive Power BI dashboards, enabling Adventure Works’ sales managers and representatives to monitor performance more effectively and make data-driven decisions

# Business Requirement 
Reporter: Steven – Sales Manager at AdventureWorks

Steven identified the following needs:
1. Replace static sales reports with visual dashboards.
2. Provide insights into:
     2.1. Which products are selling the most.
     2.2. Which customers are purchasing them.
     2.3. How sales have evolved over time.
4. Enable filtering by customer and product, as sales representatives manage different portfolios.
5. Compare sales performance against the 2021 budget (provided in Excel).
6. Support historical analysis for the current year plus the past two years.

# Business Demand Overview and User Stories
Business Demand Overview:
-	Reporter: Steven – Sales Manager
-	Value of Change: Visual dashboards and improved Sales reporting or follow up or sales force
-	Necessary Systems: Power BI, CRM System
-	Other Relevant Info: Budgets have been delivered in Excel for 2021

User Stories: 

<img width="646" height="374" alt="image" src="https://github.com/user-attachments/assets/f6d0b087-1020-496e-bdd7-57d138385e4c" />

##EDA 
Exploratory Data Analysis is the first step in the data analysis process. Here are the followin SQL Statements

<img width="924" height="259" alt="image" src="https://github.com/user-attachments/assets/bf74c3f9-8499-4558-82bb-0fe31ff89deb" />


<img width="475" height="278" alt="image" src="https://github.com/user-attachments/assets/3ec833d7-4e88-4932-8e6a-5f3d15b9400b" />


<img width="567" height="277" alt="image" src="https://github.com/user-attachments/assets/e627ed5e-533c-4822-89e5-8ed30bfe1f08" />


<img width="625" height="502" alt="image" src="https://github.com/user-attachments/assets/c06fed21-5fc1-4ed3-9ac6-7fe19aea3a77" />

## Data Cleansing & Transformation (SQL)
To build the required data model for analysis and address the business needs outlined in the user stories, several tables were extracted and transformed using SQL.

The majority of data sources were obtained directly from the database, while one external source (Sales Budgets) was provided in Excel format. This Excel dataset was later integrated into the data model to enrich the analysis and ensure alignment with business requirements.

The following SQL statements were developed to cleanse, standardize, and transform the extracted data, preparing it for modeling and subsequent reporting.

1. dim_date
<img width="408" height="413" alt="image" src="https://github.com/user-attachments/assets/34f53d13-a159-42ae-af9e-8ed16a304460" />

  2. dim_customers
<img width="567" height="486" alt="image" src="https://github.com/user-attachments/assets/e94b44fe-7f78-4b2b-89f1-5e4feed7e076" />

3. dim_products
<img width="507" height="427" alt="image" src="https://github.com/user-attachments/assets/2384b723-37d8-4adb-888a-9271afa88726" />

4. fact_internetsales
<img width="612" height="462" alt="image" src="https://github.com/user-attachments/assets/9503df10-2080-4f66-96a8-83cd56341bdb" />

## Data Model
The data model follows a star schema, with FACT_InternetSales and FACT_Budget serving as the central fact tables connected to shared dimensions such as Calendar, Customers, and Products. This structure enables efficient comparison of actual versus budgeted sales across multiple perspectives (time, customer, and product) while supporting flexible and high-performance reporting in Power BI.

<img width="1071" height="479" alt="image" src="https://github.com/user-attachments/assets/92dde933-7ada-4e80-a1e5-b96e082ed7a6" />

## Sales Management Dashboard
<img width="885" height="499" alt="image" src="https://github.com/user-attachments/assets/aa89804e-fa62-4823-a9c2-8a2cbd53486c" />
<img width="893" height="546" alt="image" src="https://github.com/user-attachments/assets/b27ae0ef-0b23-44d1-be60-ae69432b3fed" />
<img width="890" height="547" alt="image" src="https://github.com/user-attachments/assets/36c2571b-d151-4c6c-b112-d0c0d3cfcb4a" />



