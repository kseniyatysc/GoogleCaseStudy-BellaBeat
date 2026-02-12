# Fitbit Activity & Sleep Behavior Analysis
Google Data Analytics Capstone Project

## Project Overview
This project analyzes smart device usage data from Fitbit to explore user behavior patterns related to physical activity and sleep.

The objective of this analysis is to identify meaningful behavioral insights that can support product personalization, user engagement strategies, and long-term retention for a smart fitness device company.

This case study was completed as part of the Google Data Analytics Professional Certificate.

---

## Business Task
Identify patterns in daily activity and sleep behavior to help a smart fitness device company better understand how users engage with their product and how data-driven recommendations could improve user experience and retention.

---

## Data Source
Public Fitbit Fitness Tracker Dataset provided for the Google Data Analytics Case Study.

The dataset used in this project is publicly available on Kaggle:

Fitbit Fitness Tracker Data  
https://www.kaggle.com/datasets/arashnic/fitbit

Due to file size considerations, raw data files are not included in this repository.

---
### Datasets used:

- `daily_activity`
- `daily_steps`
- `daily_calories`
- `daily_intensities`
- `sleep_day`
- `weight_info` (used for exploratory analysis only)

---
### Data limitations:
- Small and inconsistent sample size

- Not all users tracked sleep or weight consistently

- Weight and body fat data contained significant missing values

- Weight-related variables were excluded from the core analysis
- 
## Analysis Process

1. Data cleaning and validation  
2. Data type standardization and deduplication  
3. Feature engineering and dataset merging  
4. Exploratory Data Analysis (EDA)  
5. Metric definition and validation  
6. User-level aggregation  
7. User segmentation using clustering  
8. Insight generation and business recommendations  

---

## Key Metrics
The analysis focused on two core behavioral metrics:

- **Average daily steps per user** — representing activity level  
- **Average sleep duration (minutes asleep)** — representing sleep behavior  

These metrics were selected because they are:
- Easy to interpret
- Directly connected to product usage
- Relevant for both health outcomes and user engagement

---

## Key Insights

- Small and inconsistent sample size

- Not all users tracked sleep or weight consistently

- Weight and body fat data contained significant missing values

- Weight-related variables were excluded from the core analysis
- 

  
## 📊 Key Insights Visualization

[User_Segmentation.png](https://b524f9c9b44743d4b8cc7d3b1b0984bc.app.posit.cloud/file_show?path=%2Fcloud%2Fproject%2FBellaBeat_Case_Study%2FOutputs%2FPlots%2FUsers_Segmentation.png)

This visualization illustrates the four distinct user segments identified through clustering based on average daily steps and average sleep duration. 

The clear separation between clusters highlights meaningful behavioral differences and supports the implementation of personalized engagement strategies.



This visualization highlights distinct user behavior patterns based on
daily activity levels and sleep duration, revealing opportunities for
personalized engagement and feature design.  

### User Segments Overview

| Segment                           | Characteristics                                            |
| --------------------------------- | ---------------------------------------------------------- |
| Low activity / good sleep         | Less active users with sufficient sleep                    |
| Moderate activity / average sleep | Balanced users                                             |
| High activity / short sleep       | Very active users potentially at risk of sleep deprivation |
| Very low sleep                    | Users with irregular or insufficient sleep patterns        |


---

## Business Recommendations


- Introduce personalized insights based on combined activity and sleep behavior

- Encourage sleep tracking adoption through in-app nudges and education

- Tailor notifications and engagement strategies for different user segments

- Support highly active users with recovery and sleep optimization guidance
---

## Tools & Technologies
- R  
- tidyverse  
- ggplot2  
- R Markdown
- k-means clustering
---

## Project Structure
├── Data/ # the data was loaded manually
├── Scripts/ # R scripts for cleaning and analysis
├── Outputs/ # visualizations and summary tables
├── Report/ # final analysis report
└── README.md

---
## Full Report

The complete analytical report can be found in:
Report/BellaBeat_Case_Study_Analysis.html




## Final Notes

This project demonstrates a structured and business-oriented data analytics workflow.

The focus is placed on:

- Data quality and validation

- Clear metric definition

- Interpretable segmentation

- Practical, actionable business recommendations

The goal was to prioritize clarity, interpretability, and business impact over unnecessary technical complexity..

