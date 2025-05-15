# Biking Through Data: A Predictive Analysis of Rental Trends

![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=flat&logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=flat&logo=jupyter&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.2.3-150458?style=flat&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-1.26.4-013243?style=flat&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-3.8.0-11557C?style=flat&logo=python&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-0.13.0-3776AB?style=flat&logo=python&logoColor=white)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-1.2.2-F7931E?style=flat&logo=scikit-learn&logoColor=white)

A machine learning project to predict hourly bike rental demand in Seoul, South Korea, using features like weather, temperature, and wind speed to optimize bike availability.

## Visualizations
- **Correlation Heatmap**:\
  &emsp;Visualizes correlations between features (e.g., temperature, humidity) and bike rentals.
- **Log-Transformed Feature Comparison**:\
  &emsp;Histogram and box plot comparing log-transformed `bikes_rented` and `wind_speed`.

View screenshots in the [visualizations](visualizations/) folder:
- [screenshot_1.png](visualizations/correlation.png): Correlation Heatmap.
- [screenshot_2.png](visualizations/comparisons.png): Log-Transformed Feature Comparison.

## Technologies Used
- Python (pandas, numpy, matplotlib, seaborn, scikit-learn)
- Jupyter Notebook

## Data Source
- Dataset: [Seoul Bike Sharing Demand](data/seoul_bike_data.csv)

## Installation and Usage
1. Clone the repository and navigate to the project folder.
2. Install dependencies: `pip install pandas numpy matplotlib seaborn scikit-learn`.
3. Open [Biking_Through_Data_A_Predictive_Analysis_of_Rental_Trends.ipynb](Biking_Through_Data_A_Predictive_Analysis_of_Rental_Trends.ipynb) in Jupyter Notebook.
4. Run the notebook to explore data analysis and model results.
5. View the PDF report [Biking_Through_Data_A_Predictive_Analysis_of_Rental_Trends](pdf/Biking_Through_Data_A_Predictive_Analysis_of_Rental_Trends.pdf).

## License
This project is licensed under the [GNU General Public License v3.0](https://github.com/SvalentinoB/PortProjects/blob/main/LICENSE).

![License](https://img.shields.io/badge/License-GNU%20GPL%20v3.0-008000?style=flat&logo=gnu)
