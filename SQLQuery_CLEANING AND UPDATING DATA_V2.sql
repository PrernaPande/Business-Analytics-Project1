--cleansed dim_date table

SELECT [DateKey]
      ,[FullDateAlternateKey] as date
     -- ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as day
     -- ,[SpanishDayNameOfWeek]
     -- ,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
     -- ,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      ,[EnglishMonthName] as month,
      left([EnglishMonthName],3) as month_in_short
    --  ,[SpanishMonthName]
    --  ,[FrenchMonthName]
      ,[MonthNumberOfYear] as monthnumb
      ,[CalendarQuarter] as quater
      ,[CalendarYear] as year
   --   ,[CalendarSemester]
   --   ,[FiscalQuarter]
   --   ,[FiscalYear]
   --   ,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  where calendaryear >= 2023;
