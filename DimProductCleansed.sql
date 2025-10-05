SELECT
	   p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS ProductName
	  ,ps.EnglishProductSubcategoryName AS SubCategory
	  ,pc.EnglishProductCategoryName AS ProductCategory
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] AS ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS ProductLine
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS ProductModelName
      --,[LargePhoto]
      ,p.[EnglishDescription] AS ProductDescription
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
	     ,ISNULL(p.Status,'Outdated') AS ProductStatus
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS p
  LEFT JOIN DimProductSubcategory AS ps
  ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  LEFT JOIN DimProductCategory AS pc
  ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey