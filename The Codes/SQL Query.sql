Use MarketingAnalytics;


--------------------------------------------------------------------------------------------------------------------

-- WORKING ON THE PRODUCTS DATA TABLE

SELECT *
FROM products;


-- Removing the product category column (Since there is only one category) and adding a PriceCategory Column to the products table
SELECT 
	ProductID,
	ProductName,
	Price,
	CASE  -- Creaing price category to separate high value products from low value products
		WHEN Price < 50 THEN 'Low'
		WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
		ELSE 'High'
	END AS PriceCategory
FROM dbo.products
ORDER BY PriceCategory;

--------------------------------------------------------------------------------------------------------------------

-- WORKING ON THE CUSTOMER AND GEOGRAPHY DATA TABLES

SELECT *
FROM customers;

SELECT *
FROM geography;

SELECT MAX(Age) MaxAge, MIN(Age) MinAge
FROM customers;


-- Conbining the customers table and the geography table to form a single table using the foreign key GeographyID and categorizing the Age column
SELECT 
	CustomerID,
	CustomerName,
	Email,
	Gender,
	Age,
	CASE  -- Categorizing the Age into Age group or Age Bracket
		WHEN Age < 40 THEN 'Young Adult'
		ELSE 'Old Adult'
	END AS AgeCategory,
	Country,
	City
FROM customers c
LEFT JOIN  
geography g ON c.GeographyID = g.GeographyID;

-------------------------------------------------------------------------------------------------------------------

-- WORKING ON THE CUSTOMER REVIEWS DATA TABLE

SELECT *
FROM customer_reviews;

-- Selecting the neccessary column and cleaning the Review texts by removing the extra white spaces
SELECT 
	ReviewID,
	CustomerID,
	ProductID,
	ReviewDate,
	Rating,
	REPLACE(ReviewText, '  ',' ') AS ReviewText  -- Removing extra white spaces
FROM customer_reviews;

-------------------------------------------------------------------------------------------------------------------

-- WORKING ON THE ENGAGEMENT DATA TABLE

SELECT *
FROM engagement_data;

-- Cleaning the engagement table
SELECT 
	EngagementID,
	ContentID,
	CampaignID,
	ProductID,
	CONVERT(DATE, EngagementDate) AS EngagementDate, -- Converted the EngagementDate column to date type
	UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType, -- Edited the ContentType and made it Uppercase
	Likes,
	LEFT(ViewsClicksCombined, CHARINDEX('-', VIewsClicksCombined) -1)  AS Views, --Split the ViewsClicksCombined into Views column
	RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks --Split into Clicks column
FROM 
	dbo.engagement_data
WHERE 
	ContentType != 'NEWSLETTER'; -- Removing NewsLetter because it won't be needed in our analysis

-------------------------------------------------------------------------------------------------------------------

-- WORKING ON CUSTOMER JOURNEY DATA TABLE

SELECT *
FROM customer_journey;


-- Checking for duplicates using CTE and ROW_NUMBER() windows function 
WITH Duplicates AS (
	SELECT
		JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		Stage,
		Action,
		Duration,
		ROW_NUMBER() OVER (PARTITION BY JourneyID, CustomerID, ProductID, VisitDate, Stage, Action ORDER BY JourneyID) AS row_num
	FROM 
		MarketingAnalytics.dbo.customer_journey
)
SELECT *
FROM Duplicates
WHERE row_num > 1   -- Filters out the first occurence (row_num = 1), and only shows the duplicates (row_num > 1)
ORDER BY JourneyID;




-- Fixing the duplicates in the table and the missing values in Duration column
SELECT 
	JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	Stage,
	Action,
	ROUND(COALESCE(Duration, avg_duration),2) AS Duration -- Using COALESCE to insert the result from avg_duration inplace of NULL
FROM
(
	SELECT		-- Inner query or Subquery to correct the missing values of Duration column, and Duplicate values
		JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		Stage,
		Action,
		Duration,
		AVG(Duration) OVER (PARTITION BY VisitDate) AS avg_duration, -- Fixing NULL values in Duration column using AVG() and PARTITION BY
		ROW_NUMBER() OVER 
			(PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action ORDER BY JourneyID) AS row_num -- Fixing duplicate values here
	FROM
		customer_journey
) AS a
WHERE row_num = 1
ORDER BY JourneyID;
