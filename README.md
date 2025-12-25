# Regional-variation-of-overweight-women-in-India-using-NFHS-5-STATA-
📊 Regional Variation of Overweight Women in India

Statistical analysis using STATA, cross-tabulation, Chi-square tests, and NFHS-5 (IAIR file) to understand patterns of overweight and obesity among women in India.

🔧 Tools Used: STATA · Excel · PowerPoint

📘 Project Overview

This project examines the regional and socio-demographic variation in Body Mass Index (BMI) among women aged 15–49 in India using data from NFHS-5 (2019–21).
The study focuses on identifying patterns and determinants of overweight and obesity, and explores how factors such as age, residence, wealth, marital status, dietary habits, alcohol consumption, pregnancy, and number of children influence BMI.
It also assesses the association between overweight and major non-communicable diseases like hypertension, respiratory disease, and heart disease.

🔍 Steps Performed

• Imported NFHS-5 Individual Recode dataset (IAIR file)
• Generated BMI variable: bmi = v445/1000
• Dropped missing, non-response, and out-of-range values (<10 or >60)
• Categorized BMI into: Underweight, Normal, Overweight, Obese
• Created new variable bmi_n with four BMI groups
• Reclassified BMI into two groups:
– Not overweight (Underweight + Normal)
– Overweight (Overweight + Obese)
• Created alcohol consumption variable from wine, liquor & other alcohol items
• Performed exploratory data analysis (EDA)
• Conducted cross-tabulations across states and socio-demographic factors
• Applied Chi-square tests for associations (p < 0.05)
• Generated charts and graphs in Excel
• Prepared presentation summarizing findings

📊 Key Results

• 23% of women are overweight/obese, exceeding underweight women (17%)
• Strong age gradient: overweight rises sharply after age 30, highest at 40–49
• Clear regional variation:
– Highest in South India, Punjab & Haryana
– Lowest in Eastern & Central states
• Urban women (32.8%) are much more overweight than rural women (19.3%)
• Higher overweight prevalence among women who:
– Consume alcohol
– Eat meat/chicken, fish, milk/curd daily
• Fried food consumption alone is not a dominant predictor
• Overweight women show higher prevalence of:
– Hypertension (8.7% vs 3.4%)
– Respiratory disease (2.1% vs 1.18%)
– Heart disease (1.05% vs 0.66%)
• Chi-square tests show BMI is significantly associated (p < 0.05) with all study variables

📝 Note on Interpretation

• Dietary data are self-reported and may involve recall or social desirability bias.
• Associations do not imply causation; results reflect correlations in survey data.
• Overweight is multi-factorial, influenced by lifestyle, socio-economic, and biological factors.
• Findings should be interpreted in the broader public health and nutrition context of India’s double burden of malnutrition.

📁 Files in This Repository

• code/ — STATA do-files used for data cleaning and analysis
• data/ — (Not shared) NFHS-5 IAIR dataset (available from DHS/NFHS)
• visuals/ — Charts and graphs generated in Excel
• report/ — PowerPoint presentation summarizing results
• README.md — Project documentation

🎯 Conclusion

Overweight among Indian women is rising rapidly and shows strong links with urbanisation, dietary transition, socio-economic status, and age.
India faces a double burden of malnutrition — undernutrition in younger women and overnutrition in older age groups.
The strong association between overweight and NCDs highlights the urgent need for region-specific nutrition and lifestyle interventions and public health awareness.

📄 Full Report View Online (Google Drive): https://drive.google.com/drive/u/0/folders/1he3_pWwSrXnJKR1_TIAVKaSw-ID9eHBw

👤 Author
Aveek Samanta
Master’s Student 
International Institute for Population Studies
