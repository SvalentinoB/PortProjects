# Biking Through Data: A Predictive Analysis of Rental Trends

![License](https://img.shields.io/badge/License-GNU%20GPL%20v3.0-blue.svg)
![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=flat&logo=python&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-green)

A machine learning project to predict hourly bike rental demand in Seoul, South Korea, using features like weather, temperature, and wind speed to optimize bike availability.

## Visualizations
- **Correlation Heatmap**: Visualizes correlations between features (e.g., temperature, humidity) and bike rentals.
- **Log-Transformed Feature Comparison**: Histogram and box plot comparing log-transformed `bikes_rented` and `wind_speed`.

View screenshots in the [visualizations](visualizations/) folder:
- [screenshot_1.png](visualizations/screenshot_1.png): Correlation Heatmap.
- [screenshot_2.png](visualizations/screenshot_2.png): Log-Transformed Feature Comparison.

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
5. (Optional) View the PDF report in [pdf/Biking_Through_Data_A_Predictive_Analysis_of_Rental_Trends.pdf](pdf/Biking_Through_Data_A_Predictive_Analysis_of_Rental_Trends.pdf).

## License
This project is licensed under the [GNU General Public License v3.0](LICENSE).
