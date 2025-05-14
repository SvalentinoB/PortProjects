
# SPACE Y Capstone Project

![Python](https://img.shields.io/badge/Python-3.8-3776AB?style=flat&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Standard-F28C38?style=flat&logo=postgresql&logoColor=white)
![Plotly Dash](https://img.shields.io/badge/Plotly%20Dash-2023-013243?style=flat)
![Folium](https://img.shields.io/badge/Folium-2023-77B72A?style=flat)
![pandas](https://img.shields.io/badge/pandas-1.5-150458?style=flat&logo=pandas&logoColor=white)
![seaborn](https://img.shields.io/badge/seaborn-0.12-1B4F72?style=flat)

## Overview
This project analyzes SpaceX Falcon 9 launch data to predict first-stage landing success, enabling cost optimization and competitive insights for rocket launches.

- **Objective**: Predict landing success to reduce launch costs (SpaceX: $62M vs. competitors: $165M).
- **Tools**: Python (pandas, seaborn, Plotly Dash, Folium), SQL, Machine Learning (SVM, Random Forest).
- **Date**: October 2024.

## Methodology
- **Data Collection**: SpaceX REST API and Wikipedia web scraping for launch data.
- **Data Wrangling**: One-Hot Encoding for categorical variables, removed irrelevant columns.
- **Exploratory Data Analysis (EDA)**: Scatter plots, bar graphs, and SQL queries to identify patterns (e.g., payload mass vs. success).
- **Interactive Visualizations**: Folium map for launch sites, Plotly Dash dashboard for real-time analysis.
- **Predictive Analysis**: Built classification models (SVM achieved 83.3% accuracy).

## Results
- Identified KSC LC-39A as the most successful launch site.
- Found that higher flight numbers correlate with increased landing success.
- Noted heavier payloads (>10,000 kg) have mixed landing outcomes.
- Developed 5 interactive dashboards and 3 maps.

## Visualizations
- [Folium Map](visualizations/launch_sites_map.png) (to be added)
- [Plotly Dash Dashboard](visualizations/dashboard_pie_chart.png) (to be added)

## Files
- [Project Report](docs/SpaceY.pdf)
- [Jupyter Notebook](notebooks/space_y_analysis.ipynb) (to be added)

## Links
- [Dashboard Demo](https://your-pythonanywhere-url.com) (replace with actual URL if hosted)
