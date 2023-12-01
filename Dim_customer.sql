SELECT 
  c.[CustomerKey] as CustomerKey
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.[FirstName] as [First Name] 
  --,[MiddleName]
  , 
  c.[LastName] as [Last Name], 
  c.FirstName + ' ' + c.LastName as FullName 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  case c.Gender WHEN 'M' then 'Male' WHEN 'F' then 'Female' end as Gender, 
  c.gender as Test 
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
  , 
  c.[DateFirstPurchase] as DateFirstPurchase 
  --,[CommuteDistance]
  , 
  g.City as [Costumer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN AdventureWorksDW2019..DimGeography AS g on c.GeographyKey = g.GeographyKey 
order by 
  CustomerKey asc
