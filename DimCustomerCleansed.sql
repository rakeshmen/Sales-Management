SELECT
	   c.[CustomerKey] AS CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      --,[FirstName]
	  ,c.[FirstName] AS FirstName
      --,[MiddleName]
      --,[LastName]
	  ,c.LastName AS LastName
	  ,c.FirstName + '  ' + c.LastName AS FullName
	  , CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      --,[Gender]
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      --,[DateFirstPurchase]
      ,c.DateFirstPurchase AS DateFirstPurchase
	  --,[CommuteDistance]
	  ,g.City AS CustomerCity
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] c
  LEFT JOIN dbo.DimGeography AS g
  ON c.GeographyKey = g.GeographyKey
  ORDER BY c.CustomerKey