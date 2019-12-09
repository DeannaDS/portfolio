# Predicting Opioid Abuse Using Machine Learning

This project uses data from the 2016 National Survey on Drug Use and Health to build a machine learning model to predict opioid use from a small set of non-intrusive questions regarding the perceived riskiness of various substances.

Data was cleaned and visualized with exploratory data analysis. Missing data was imputed. Four potential models were considered - Random Forest with Stratification, Random Forest with Cutoff, Lasso, and a Neural Network. Double cross validation was performed to determine the best model. 

The model with the best cross-validated results was the stratified random forest model. After applying this model to test data, in-depth analysis of the model accuracy was performed.

Note: Everything is included to run this code. However, running this code is extremely time and processor intensive. 