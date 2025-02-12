# Sleep-Efficiency-Analysis

## **Project Overview**
This project investigates **sleep efficiency and sleep patterns** using regression analysis and clustering techniques. The study aims to identify key factors influencing sleep efficiency and derive insights into potential interventions for better sleep health.

## **Files in the Repository**
### **1. Final Project Paper** 
- Comprehensive report on the Sleep Efficiency Study
- Includes research questions, dataset description, methodology, results, and conclusions
- Explores Linear Regression and Clustering techniques 
- Key research questions:  
  1. Do sleep patterns and efficiency differ significantly between gender groups?  
  2. How does caffeine consumption relate to sleep efficiency and awakenings?  
  3. Is there a significant association between exercise frequency and REM sleep?  

### **2. Linear Regression Code** 
- Implements Linear Regression models to analyze:  
  - The effect of caffeine consumption on sleep efficiency and awakenings 
  - The impact of exercise frequency on REM sleep percentage 
- Uses ggplot2 and dplyr for visualization  
- Summarizes findings with plots and regression outputs  

### **3. Clustering Code** 
- Implements K-Means Clustering on Sleep Duration and REM Sleep Percentage
- Examines clustering patterns by Gender
- Visualizes clustering using ggplot2

---

## **Dataset**
- **Source:** Kaggle – Sleep Efficiency Dataset  
- **Description:** Contains sleep-related variables such as:  
  - **Sleep Duration**  
  - **REM Sleep Percentage**  
  - **Caffeine Consumption**  
  - **Exercise Frequency**  
  - **Awakenings**  
  - **Gender & Lifestyle factors**  

---

## **Methodology**
### **1. Data Preprocessing**
- Convert categorical variables (`Gender`, `Smoking_status`) to factors  
- Handle missing values appropriately  

### **2. Linear Regression**
- **Simple Regression:** Examining the relationship between Sleep Efficiency and Age 
- **Multiple Regression:** Modeling Sleep Efficiency against multiple predictors  
- **Visualizations:** Scatter plots with regression lines  

### **3. Clustering**
- **K-Means Clustering** with two clusters (based on Gender)  
- **Standardization** of features before clustering  
- **Visualization** of clusters in a scatter plot  

---

## **Results & Insights**
1. **Linear Regression Findings:**  
   - Sleep efficiency positively correlates with age.  
   - Caffeine consumption has no significant impact** on sleep efficiency or awakenings.  
   - Exercise frequency has a weak positive correlation** with REM sleep percentage.  

2. **Clustering Analysis:**  
   - Gender-based clustering shows that females have a higher REM Sleep Percentage, whereas males have longer Sleep Duration.  

---

## **Challenges Faced**
- Subjectivity in self-reported sleep data  
- Influence of external factors like **screen time and stress**  
- Variability in sleep efficiency beyond measurable factors  

---

## **Tools & Technologies Used**
- **R Programming** (`ggplot2`, `dplyr`, `cluster`)  
- **Kaggle Dataset** for real-world data  
- **Visualization techniques** for interpretation  

---

## **How to Use the Code?**
1. Ensure R and required libraries (`ggplot2`, `dplyr`, `cluster`) are installed.  
2. Place `Sleep_Efficiency.csv` in the working directory.  
3. Run `PAIDIGUMAL-VIVEK-LINEAR-REGRESSION-RESEARCH-QUESTION.R` for regression analysis.  
4. Run `PAIDIGUMAL-VIVEK-CLUSTERING-RESEARCH-QUESTION.R` for clustering analysis.  
5. Interpret outputs and visualizations.  

---

## **Author**
Vivek Paidigumal Patil

---


