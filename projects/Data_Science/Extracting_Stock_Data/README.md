# Extracting Stock Data: A Python-Based Analysis

![License](https://img.shields.io/badge/License-GNU%20GPL%20v3.0-blue.svg)
![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=flat&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.2.3-150458?style=flat&logo=pandas&logoColor=white)
![yfinance](https://img.shields.io/badge/yfinance-0.2.44-FF4500?style=flat&logo=yahoo&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=flat&logo=jupyter&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-green)

A data science project to extract and analyze stock data for Advanced Micro Devices (AMD) using the `yfinance` Python library, focusing on historical price trends and trading volume for hedge fund analysis.

## Visualization
- **Open Price Trend**: Line plot of AMD's opening stock price over time.

View screenshot in the [visualizations](visualizations/) folder:
- [screenshot_1.png](visualizations/screenshot_1.png): Open Price Trend.

## Technologies Used
- Python (pandas, yfinance)
- Jupyter Notebook

## Data Source
- Dataset: [amd.json](data/amd.json) (stock metadata)
- Historical stock data retrieved via `yfinance` API

## Installation and Usage
1. Clone the repository and navigate to the project folder.
2. Install dependencies: `pip install pandas yfinance`.
3. Open [Extracting_Stock_Data.ipynb](Extracting_Stock_Data.ipynb) in Jupyter Notebook.
4. Run the notebook to explore stock data extraction and visualization.

## License
This project is licensed under the [GNU General Public License v3.0](LICENSE).
