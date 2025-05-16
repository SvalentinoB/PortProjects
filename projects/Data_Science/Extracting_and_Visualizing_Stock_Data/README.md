# Extracting and Visualizing Stock Data: Tesla and GameStop Analysis

![License](https://img.shields.io/badge/License-GNU%20GPL%20v3.0-blue.svg)
![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=flat&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.2.2-150458?style=flat&logo=pandas&logoColor=white)
![yfinance](https://img.shields.io/badge/yfinance-0.2.38-FF4500?style=flat&logo=yahoo&logoColor=white)
![Plotly](https://img.shields.io/badge/Plotly-5.15-3F4F75?style=flat&logo=plotly&logoColor=white)
![BeautifulSoup](https://img.shields.io/badge/BeautifulSoup-4.12.2-000000?style=flat)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=flat&logo=jupyter&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-green)

A data science project to extract and visualize stock and revenue data for Tesla (TSLA) and GameStop (GME) using Python. The project leverages `yfinance` for stock data, web scraping with `BeautifulSoup` for revenue data, and `Plotly` for interactive visualizations.

## Visualizations
- **Tesla Stock and Revenue**: Combined plot of Tesla's historical share price and quarterly revenue.
- **GameStop Stock and Revenue**: Combined plot of GameStop's historical share price and quarterly revenue.

View visualizations in the [visualizations](visualizations/) folder:
- [tesla_stock_revenue.png](visualizations/tesla_stock_revenue.png)
- [gamestop_stock_revenue.png](visualizations/gamestop_stock_revenue.png)

## Technologies Used
- Python (pandas, yfinance, requests, BeautifulSoup, plotly)
- Jupyter Notebook

## Data Sources
- Stock data: Retrieved via `yfinance` API for TSLA and GME.
- Revenue data: Scraped from web pages and saved as:
  - [tesla_revenue.csv](data/tesla_revenue.csv)
  - [gme_revenue.csv](data/gme_revenue.csv)

## Installation and Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/SvalentinoB/Stock-Data-Analysis.git
   cd Stock-Data-Analysis
