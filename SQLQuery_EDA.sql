---EXPLORATORY DATA ANALYSIS-------

--1. list all the tables in the database
SELECT *
FROM AdventureWorksDW2022.INFORMATION_SCHEMA.TABLES; ----Total 36 table name with 5 view table type and 31 base table.


--2. Namning only base (actual) table 
SELECT TABLE_NAME
FROM AdventureWorksDW2022.INFORMATION_SCHEMA.TABLES
where TABLE_TYPE='BASE TABLE';

---3. Count of total tables
SELECT count(TABLE_NAME) as [total number of tables]
FROM AdventureWorksDW2022.INFORMATION_SCHEMA.TABLES
where TABLE_TYPE='BASE TABLE';

---4. Exploring DimCustomer
SELECT COUNT(*) AS [Number of Columns]
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimCustomer';

SELECT COUNT(*) AS [Number of Rows]
FROM DimCustomer;

--distinct customers
SELECT DISTINCT CustomerKey AS [Unique CustomerKey]
FROM DimCustomer;

---duplicate values
SELECT CustomerKey, COUNT(*) AS Occurrences
FROM DimCustomer
GROUP BY CustomerKey
HAVING COUNT(*) > 1;

--5. Exploring DimProduct
SELECT COUNT(*) AS [Number of Columns]
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimProduct';

SELECT COUNT(*) AS [Number of Rows]
FROM DimProduct;

---Distinct products name
SELECT DISTINCT EnglishProductName AS [Unique Product Name]
FROM DimProduct;

---Missing Values
SELECT *
FROM DimProduct
WHERE EnglishProductName IS NULL;

--6.Exploring DimProductCategory
SELECT COUNT(*) AS [Number of Columns]
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimProductCategory';

SELECT COUNT(*) AS [Number of Rows]
FROM DimProductCategory;

---Distinct products name
SELECT DISTINCT EnglishProductCategoryName AS [Unique Product Name]
FROM DimProductCategory;

---Missing Values
SELECT *
FROM DimProductCategory
WHERE EnglishProductCategoryName IS NULL; 

--7.Exploring DimProductSubCategory
SELECT COUNT(*) AS [Number of Columns]
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimProductSubCategory';

SELECT COUNT(*) AS [Number of Rows]
FROM DimProductSubcategory;

---Distinct products name
SELECT DISTINCT EnglishProductSubcategoryName AS [Unique Product Name]
FROM DimProductSubcategory;

---Missing Values
SELECT *
FROM DimProductSubcategory
WHERE EnglishProductSubcategoryName IS NULL; 

--8. Exploring InternetSales
SELECT COUNT(*) AS [Number of Columns]
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'FactInternetSales';

SELECT COUNT(*) AS [Number of Rows]
FROM FactInternetSales;
