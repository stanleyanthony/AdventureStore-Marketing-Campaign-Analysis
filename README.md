# AdventureStore-Marketing-Campaign-Analysis


## Table of Content

 1. [Project Purpose](#project-purpose)
 2. [Tools used](#tools-used)
 3. [Understanding the Business Problem and the Data](#understanding-the-business-problem-and-the-data)
 4. [Data Cleaning with SQL](#data-cleaning-with-sql)
 5. [Advance sentiment analysis with Python](#advance-sentiment-analysis-with-python)
 6. [Visualization and Insights using Power BI](#visualization-and-insights-using-power-bi)
 7. [Recommendations](#recommendations)


## Project Purpose

Analyzing Adventure Store Marketing Data to identify why there is decrease in conversion rate, low customer engagements, reduced ROI despite increase in marketing budget; To evaluate the effectiveness of its current strategies, uncover opportunities to optimize its campaign efforts, and provide recommendations to increase conversion rates.



## Tools used
 1. SQL (Microsoft SQL Server) - for data cleaning and preparation
 2. Python - for customer reviews sentiment analysis
 3. Power BI - for visualization and insights
 4. PowerPoint - for presentation of insights and recommendations


## Understanding the Business Problem and the Data

### Business Problem / Key Points / Goals

#### Business Problem
AdventureStore, an online retail business, is facing reduced customer engagement and conversion rates despite launching several new online marketing campaigns. They are reaching out to me to help conduct a detailed analysis and identify areas for improvement in their marketing strategies.

#### Key Points
1. Decreased Conversion Rate: Low conversion rate probably due to decreased in customer engagement
2. Reduced Customer Engagement: The number of customer engagements have decreased over time which has led to low ROI
3. High Marketing Campaign: Increased in campaign expenses
4. Analysis on customer feedbacks: Understanding customer pain point, behavior, and opinions on products and services for better engagement and conversion rate.


#### Goals 

1. **To Increased Conversion Rate:**

   - **_Goal:_** Identify factors affecting conversion rate and provide recommendations 
          to improve it.
   
   - **_Insight:_** Highlight key stages where visitors drop off and suggest ways 
          to optimize the conversion funnel

2. **To Enhanced Customer Engagement:**

   - **_Goal:_** Identify the type of contents that attract the highest engagement.
   
   - **_Insight:_** Analyze interaction with various types of marketing contents for 
          enhanced decision making

3. **To Improve Customer Feedback Score:**

   - **_Goal:_** Identify common patterns in customer reviews for better/improve 
          decision making.
   
   - **_Insight:_** Analyze customer ratings and feedback to identify recurring 
          positive and negative feedbacks to enable products and service improvement


## Data Cleaning with SQL  

Cleaning the data with SQL and preparing for visualization and Insight - Check out the [SQL Code](https://github.com/stanleyanthony/AdventureStore-Marketing-Campaign-Analysis/blob/main/The%20Codes/SQL%20Query.sql) 

***


## Advance sentiment analysis with Python

Carrying out sentiment analysis with Python - Check out the [Python Code](https://github.com/stanleyanthony/AdventureStore-Marketing-Campaign-Analysis/blob/main/The%20Codes/Python%20-%20customer_reviews_sentiment_analysis.py) 

***


## Visualization and Insights using Power BI

### ⭐ Insights from the Summary Overview Page

![Overview Dashboard](https://github.com/user-attachments/assets/9e753c89-89e9-4e9c-b093-137cdd47beb0)

#### 1. Conversion rate: 
- Conversion rate took a dip from 17.3% in January to 10.2% in February and further down to in May. Although there were rebounds in 7.6% June 10.5% and September 12.2%. There was a consistent upward trend towards the end of the year. Also the click through rate stood at 19.7%, while the conversion rate at 9.6%

- It is also note worthy to say that some product has higher conversion rate like Hockey Stick 15.5%, Ski Boots 14.6%, and Baseball Glove 13.7%. Swimming Giggle had the lowest engagement of 5.6%.

#### 2. Customer Engagement: 
- Customer engagement shows a steady decline from January to December in Views from over 900k to 510k views, which also reflect drops in Clicks 226k to 75k and Likes 59k to little over 13k.

#### 3. Customer reviews:
- Customer reviews stood steady at 3.7% on average. The highest review was received in April 3.9% and June 3.8%, while the lowest review came in January and August 3.5% each. The rating per product stood slightly steady without any major deep

***

### ⭐ Insights from the Conversion Rate of Products by month

![Picture3](https://github.com/user-attachments/assets/d7cd34ec-1841-41c4-ab50-b15aabf00b36)

#### 1. General Trend:
- The conversion rate generally shows a steady decline from January 17.3% to December 11.4%. It began with a high rate in January to low in mid year April 7.7%, May 7.6%, and August 7.6%. It starts to peak up in Q4.

#### 2. Highest Conversion Month:
- The highest conversion rate took place in January 17.3%, which was likely fueled by Ski Boots sale which brought in 100% conversion rate, and also Soccer Ball sale which gave a 75% conversion rate. All in the month of January. 

#### 3. Lowest Conversion Month
- The lowest conversion rate was recorded in October with 6.1%, April 7.7%, and May with 7.6%.

***

### ⭐ Insights from Views, Clicks, and Likes

![Engagement 2](https://github.com/user-attachments/assets/cbd144d0-f8ab-482a-a597-a705c5dce133) ![Engagement 1](https://github.com/user-attachments/assets/906220ca-3c10-4885-842f-279c018d80d9)

#### 1. Declining Views:
- The views declines steadily from January 980k to March 915k and remained firm till April 919k. Then began to drop continuously from April to December 510k views.

#### 2. Low Interaction Rate: 
- The decline in views definitely reflected in clicks and like which shows engagement with the content. Although the view decreased by almost half (from 980k to 510k), The clicks and like were affected more. With clicks decreasing from 226k to 75k, while like dropped from 59k to 13k at the end of the year. 

#### 3. Content Type Performance: 
- Blog content brought the most views especially at the beginning of the year, but showed a strong dip at 4th quarter. Social media and video maintained a steady but slightly lower views and engagement. 

***

### ⭐ Insights from Customer Ratings and Sentiment Analysis Chart

![Customer review](https://github.com/user-attachments/assets/108df90e-99af-4421-93f2-1092a458e47d) ![Customer review 2](https://github.com/user-attachments/assets/9daff4bf-b99e-422a-88b9-06a59ecba2e2) 

#### 1. Customer Rating Patterns: 
- The majority of customer ratings stood 4 to 5 stars, with 431 gave a 4 star rating, and 409 gave a 5 star rating. On the lower end, 80 customers gave 1 star, while 153 gave 2 stars, that means a total of 233 customers where not satisfied.

#### 2. Customers Sentiment Analysis:
- Positive sentiment stood high at 840 which show a high customer satisfaction rate. On the other hand, negative sentiment stood at 226, while a few customers 15 were neutral in their reviews. Mixed negative and mixed positive sentiments stood at a combine total of 282, which show an area to improvement on.

#### 3. Opportunity for Improvement:
- The presence of mixed positive and mixed negative sentiments shows that there is need to convert them into a positive ones. Addressing the concerns of mixed reviews will greatly improve customer satisfaction, and potentially boost overall ratings and lead to more sales.

***


## Recommendations

Each recommendation is align to fulfill the [Goals](#goals) of this project.

#### Increased Conversion Rate:

 - To increase conversion rate, it is recommended that you target high performing product categories such as Ski Boots, Baseball Glove, Yoga Mat, Surf Board, and Cycling Helmet. As these will boost total sales up by 10% - 20%, because there are always communities behind these activities.
   
 - Adopt seasonal promotion and campaign during peak months like January, and September to December, to capitalize on the seasonal trends.
   
 - Since there is a high rate of drop off, it is also recommended to occasionally run a brief survey to understand why customer drop off before purchase, and develop way to reduce drop off rate such as recommending other related products.


#### Enhanced Customer Engagement: 

 - To turn around the decreasing views and engagements, post more engaging content such as videos and user generated contents. Carry out experiments on posts to know the most engaging content format for the audience.
   
 - Also, add call-to-action to both boosted contents and non boosted contents on social media and blog posts to keep users engaged. This might increase engagement by 7% - 10% especially during low engagement months like September to December.


#### Improve Customer Feedback Score: 

 - Address mixed and negative feedbacks by asking customers with negative feedback the reason for their unsatisfaction and ways you can better serve them. Develop improve plan to address this issues.
   
 - Consider following up with dissatisfied customers and encourage re-rating in other to boost average rating score above the 4.5 target.
























