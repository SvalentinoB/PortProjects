
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

## Project Stages
The project is divided into eight stages, each with a Jupyter Notebook and supporting files for detailed analysis:

- **1. API Data Collection** ([Notebook](1_API/jupyter-labs-spacex-data-collection-api.ipynb) | [Data](1_API/dataset_part_1.csv))  
  Retrieved launch data (flight numbers, payloads, outcomes) using the SpaceX REST API.
- **2. Web Scraping** ([Notebook](2_Web%20Scraping/jupyter-labs-webscraping.ipynb) | [Data](2_Web%20Scraping/spacex_web_scraped.csv))  
  Extracted additional launch details from Wikipedia using BeautifulSoup.
- **3. Data Wrangling** ([Notebook](3_Data%20Wrangling/labs-jupyter-spacex-Data%20wrangling-v2.ipynb) | [Data](3_Data%20Wrangling/dataset_part_2.csv))  
  Cleaned and prepared data with One-Hot Encoding and removal of irrelevant columns.
- **4. SQL Analysis** ([Notebook](4_SQL/jupyter-labs-eda-sql-coursera_sqllite.ipynb) | [Database](4_SQL/my_data1.db))  
  Performed exploratory analysis using SQL queries on a SQLite database to identify patterns.
- **5. Visualizations** ([Notebook](5_Visualizations/jupyter-labs-eda-dataviz-v2.ipynb) | [Data](5_Visualizations/dataset_part_3.csv))  
  Created scatter plots and bar graphs with seaborn to explore payload mass and success rates.
- **6. Folium Map** ([Notebook](6_Folium/lab-jupyter-launch-site-location-v2.ipynb) | [Data](6_Folium/spacex_launch_geo%20(1).csv) | [Notes](6_Folium/load%20map.txt))  
  Developed an interactive map of launch sites with success/failure markers using Folium.
- **7. Plotly Dash Dashboard** ([Notebook](7_Dash/Build%20an%20Interactive%20Dashboard%20with%20Ploty%20Dash.ipynb) | [Data](7_Dash/spacex_launch_dash.csv) | [HTML](7_Dash/Build%20an%20Interactive%20Dashboard%20with%20Ploty%20Dash.html) | [Notes](7_Dash/Adapting%20the%20assignment%20to%20be%20run%20on%20Jupyter%20Notebook.txt))  
  Built an interactive dashboard with pie charts and other visualizations for real-time analysis.
- **8. Machine Learning** ([Notebook](8_ML/SpaceX-Machine-Learning-Prediction-Part-5-v1.ipynb))  
  Trained classification models (SVM, Random Forest, KNN), achieving 83.3% accuracy with SVM.

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

## Links
- [Dashboard Demo](https://your-pythonanywhere-url.com) (replace with actual URL if hosted)
