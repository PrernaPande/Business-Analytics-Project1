-- Cleansed DIM_Customers Table --
SELECT 
  c.[CustomerKey] 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.[FirstName] AS [First Name] --  ,[MiddleName]
  , 
  c.[LastName] as [Last Name], 
  c.[FirstName] + ' ' + c.[LastName] as [Full Name] --,[NameStyle]
  -- ,[BirthDate]
  -- ,[MaritalStatus]
  --  ,[Suffix]
  , 
  case c.[Gender] when 'M' then 'Male' when 'F' then 'Female' end as Gender -- ,[EmailAddress]
  -- ,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  -- ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  -- ,[AddressLine1]
  --  ,[AddressLine2]
  --  ,[Phone]
  , 
  c.[DateFirstPurchase] as [Date First Purchase], 
  --   ,[CommuteDistance]
  g.City as [Customer City] -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] as g on g.GeographyKey = c.GeographyKey 
order by 
  c.CustomerKey desc;-- Ordered List by CustomerKey

