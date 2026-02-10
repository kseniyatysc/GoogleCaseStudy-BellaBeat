# Fitbit Activity & Sleep Behavior Analysis

## Project Overview
This project analyzes smart device usage data from Fitbit to explore user behavior patterns related to physical activity and sleep.  
The goal of the analysis is to identify actionable insights that can support product improvement, personalization, and user engagement strategies for a fitness tracking company.

This case study was completed as part of the Google Data Analytics Professional Certificate.

---

## Business Task
Identify patterns in daily activity and sleep behavior to help a smart fitness device company better understand how users engage with their product and how data-driven recommendations could improve user experience and retention.

---

## Data Source
Public Fitbit Fitness Tracker Dataset provided for the Google Data Analytics Case Study.

## Data Availability
The dataset used in this project is publicly available on Kaggle:

Fitbit Fitness Tracker Data  
https://www.kaggle.com/datasets/arashnic/fitbit

Due to file size considerations, raw data files are not included in this repository.

### Datasets used:
- `daily_activity`
- `daily_steps`
- `daily_calories`
- `daily_intensities`
- `sleep_day`
- `weight_info` (used for exploratory analysis only)

### Data limitations:
- Small and inconsistent sample size
- Not all users tracked sleep or weight consistently
- Weight and body fat data contained many missing values and were excluded from core analysis

---

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
- Higher activity levels do not necessarily lead to longer sleep duration  
- Users exhibit distinct behavior patterns when combining activity and sleep data  
- Four clearly differentiated user segments were identified through clustering

## Key Insights Visualization

![Activity and Sleep Clusters](../Outputs/Plots/activity_sleep_clusters.png)



This visualization highlights distinct user behavior patterns based on
daily activity levels and sleep duration, revealing opportunities for
personalized engagement and feature design.  

### User Segments Overview
| Segment | Characteristics |
|------|----------------|
| Low activity / good sleep | Less active users with sufficient sleep |
| Moderate activity / average sleep | Balanced users |
| High activity / short sleep | Very active users potentially at risk of sleep deprivation |
| Very low sleep | Users with irregular or insufficient sleep patterns |

---

## Business Recommendations
- Introduce personalized insights based on combined activity and sleep behavior  
- Encourage sleep tracking adoption through in-app nudges and education  
- Tailor notifications and recommendations for different user segments  
- Support highly active users with sleep optimization guidance  

---

## Tools & Technologies
- R  
- tidyverse  
- ggplot2  
- R Markdown  

---

## Project Structure
├── Data/ # the data was loaded manually
├── Scripts/ # R scripts for cleaning and analysis
├── Outputs/ # visualizations and summary tables
├── Report/ # final analysis report
└── README.md

---



## Final Notes
This analysis demonstrates a structured, end-to-end data analytics workflow, 
focusing on data quality, metric relevance, and business impact rather than purely technical complexity.

