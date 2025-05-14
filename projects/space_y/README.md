
# SPACE Y Capstone Project

![Python](https://img.shields.io/badge/Python-3.8-3776AB?style=flat&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Standard-F28C38?style=flat&logo=postgresql&logoColor=white)
![Plotly Dash](https://img.shields.io/badge/Plotly%20Dash-2023-013243?style=flat)
![Folium](https://img.shields.io/badge/Folium-2023-77B72A?style=flat)
![pandas](https://img.shields.io/badge/pandas-1.5-150458?style=flat&logo=pandas&logoColor=white)
![seaborn](https://img.shields.io/badge/seaborn-0.12-1B4F72?style=flat)

## Overview
This project analyzes SpaceY Falcon 9 launch data to predict first-stage landing success, enabling cost optimization and competitive insights for rocket launches.

- <ins>**Objective**</ins>: &emsp;Predict landing success to reduce launch costs (SpaceX: $62M vs. competitors: $165M).
- <ins>**Tools**</ins>: &emsp;Python (pandas, seaborn, Plotly Dash, Folium), SQL, Machine Learning (SVM, Random Forest).
- <ins>**Date**</ins>: &emsp;October 2024.

## Methodology
- <ins>**Data Collection**</ins>: &emsp;&emsp;SpaceX REST API and Wikipedia web scraping for launch data.
- <ins>**Data Wrangling**</ins>: &emsp;&emsp;One-Hot Encoding for categorical variables, removed irrelevant columns.
- <ins>**Exploratory Data Analysis (EDA)**</ins>: &emsp;&emsp;Scatter plots, bar graphs, and SQL queries to identify patterns (e.g., payload mass vs. success).
- <ins>**Interactive Visualizations**</ins>: &emsp;&emsp;Folium map for launch sites, Plotly Dash dashboard for real-time analysis.
- <ins>**Predictive Analysis**</ins>: &emsp;&emsp;Built classification models (SVM achieved 83.3% accuracy).

## Project Stages
The project is divided into eight stages, each with a Jupyter Notebook and supporting files for detailed analysis:

- **1. <ins>API Data Collection**</ins> &emsp;([Notebook](1_API/jupyter-labs-spacex-data-collection-api.ipynb) | [Data](1_API/dataset_part_1.csv))  
  &emsp;&emsp;Retrieved launch data (flight numbers, payloads, outcomes) using the SpaceX REST API.
- **2. <ins>Web Scraping**</ins> &emsp;&emsp;&emsp;&nbsp;([Notebook](2_Web%20Scraping/jupyter-labs-webscraping.ipynb) | [Data](2_Web%20Scraping/spacex_web_scraped.csv))  
  &emsp;&emsp;Extracted additional launch details from Wikipedia using BeautifulSoup.
- **3. <ins>Data Wrangling**</ins> &emsp;&emsp;&nbsp;&nbsp;([Notebook](3_Data%20Wrangling/labs-jupyter-spacex-Data%20wrangling-v2.ipynb) | [Data](3_Data%20Wrangling/dataset_part_2.csv))  
  &emsp;&emsp;Cleaned and prepared data with One-Hot Encoding and removal of irrelevant columns.
- **4. <ins>SQL Analysis**</ins> &emsp;&emsp;&emsp;&emsp;([Notebook](4_SQL/jupyter-labs-eda-sql-coursera_sqllite.ipynb) | [Database](4_SQL/my_data1.db))  
  &emsp;&emsp;Performed exploratory analysis using SQL queries on a SQLite database to identify patterns.
- **5. <ins>Visualizations**</ins> &emsp;&emsp;&emsp;&nbsp;&nbsp;([Notebook](5_Visualizations/jupyter-labs-eda-dataviz-v2.ipynb) | [Data](5_Visualizations/dataset_part_3.csv))  
  &emsp;&emsp;Created scatter plots and bar graphs with seaborn to explore payload mass and success rates.
- **6. <ins>Folium Map**</ins> &emsp;&emsp;&emsp;&emsp;&nbsp;([Notebook](6_Folium/lab-jupyter-launch-site-location-v2.ipynb) | [Data](6_Folium/spacex_launch_geo%20(1).csv) | [Notes](6_Folium/load%20map.txt))  
  &emsp;&emsp;Developed an interactive map of launch sites with success/failure markers using Folium.
- **7. <ins>Plotly Dash Dashboard**</ins> &emsp;([Notebook](7_Dash/Build%20an%20Interactive%20Dashboard%20with%20Ploty%20Dash.ipynb) | [Data](7_Dash/spacex_launch_dash.csv) | [HTML](7_Dash/Build%20an%20Interactive%20Dashboard%20with%20Ploty%20Dash.html) | [Notes](7_Dash/Adapting%20the%20assignment%20to%20be%20run%20on%20Jupyter%20Notebook.txt))  
  &emsp;&emsp;Built an interactive dashboard with pie charts and other visualizations for real-time analysis.
- **8. <ins>Machine Learning**</ins> &emsp;&nbsp;&nbsp;([Notebook](8_ML/SpaceX-Machine-Learning-Prediction-Part-5-v1.ipynb))  
  &emsp;&emsp;Trained classification models (SVM, Random Forest, KNN), achieving 83.3% accuracy with SVM.

## Results
- Identified KSC LC-39A as the most successful launch site.
- Found that higher flight numbers correlate with increased landing success.
- Noted heavier payloads (>10,000 kg) have mixed landing outcomes.
- Developed 5 interactive dashboards and 3 maps.

## Visualizations
- [Folium Map](visualizations/launch_sites_map.png) 
- [Plotly Dash Dashboard](visualizations/dashboard_pie_chart.png) 

## Files
- [Project Report](docs/SpaceY.pdf)

## Links
- [SpaceY Launch Records Dashboard](https://vsianskyi.pythonanywhere.com)
  
[License](https://github.com/SvalentinoB/PortProjects/blob/main/LICENSE)

![License](https://img.shields.io/badge/License-GNU%20GPL%20v3.0-008000?style=flat&logo=gnu)
