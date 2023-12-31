SELECT
       p.[ProductKey]
      ,p.[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as [Product Name]
	  ,ps.EnglishProductSubcategoryName as [Sub Category]
	  ,pc.EnglishProductCategoryName as [Product Category]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] as [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] as [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] as [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] as [Product Model Name]
      --,[LargePhoto]
      ,[EnglishDescription] as [Product Description]
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
      , isnull (p.status,'OutStated') as [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  LEFT JOIN AdventureWorksDW2019..DimProductSubcategory as ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  LEFT JOIN AdventureWorksDW2019..DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
  order by ProductKey asc

