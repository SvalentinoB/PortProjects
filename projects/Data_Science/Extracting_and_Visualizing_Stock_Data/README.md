# Extracting and Visualizing Stock Data: Tesla and GameStop Analysis

![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=flat&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.2.2-150458?style=flat&logo=pandas&logoColor=white)
![yfinance](https://img.shields.io/badge/yfinance-0.2.38-FF4500?style=flat&logo=yahoo&logoColor=white)
![Plotly](https://img.shields.io/badge/Plotly-5.15-3F4F75?style=flat&logo=plotly&logoColor=white)
![BeautifulSoup](https://img.shields.io/badge/BeautifulSoup-4.12.2-000000?style=flat)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=flat&logo=jupyter&logoColor=white)

A data science project to extract and visualize stock and revenue data for Tesla (TSLA) and GameStop (GME) using Python. The project leverages `yfinance` for stock data, web scraping with `BeautifulSoup` for revenue data, and `Plotly` for interactive visualizations.

## Visualizations
- **Tesla Stock and Revenue**:\
   &emsp;Combined plot of Tesla's historical share price and quarterly revenue.
- **GameStop Stock and Revenue**:\
   &emsp;Combined plot of GameStop's historical share price and quarterly revenue.

## Technologies Used
- Python (pandas, yfinance, requests, BeautifulSoup, plotly)
- Jupyter Notebook

## Data Sources
- Stock data: Retrieved via `yfinance` API for TSLA and GME.
- Revenue data: Scraped from web pages and saved as:
  - [tesla_revenue.csv](data/tesla_revenue.csv)
  - [gme_revenue.csv](data/gme_revenue.csv)

## Installation and Usage
1. Clone the repository and navigate to the project folder.
2. Install dependencies: `pip install pandas yfinance beautifulsoup4 plotly`.
3. Open [Extracting_and_Visualizing_Stock_Data.ipynb](https://github.com/SvalentinoB/PortProjects/blob/main/projects/Data_Science/Extracting_and_Visualizing_Stock_Data/Extracting_and_Visualizing_Stock_Data.ipynb) in Jupyter Notebook.
4. Run the notebook to extract and visualize stock data.

## License
This project is licensed under the [GNU General Public License v3.0](https://github.com/SvalentinoB/PortProjects/blob/main/LICENSE).

![License](https://img.shields.io/badge/License-GNU%20GPL%20v3.0-008000?style=flat&logo=gnu)
