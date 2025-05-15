# COVID-19 Data Analysis

![SQL](https://img.shields.io/badge/SQL-Server-blue)

An SQL-based analysis of COVID-19 datasets, focusing on key metrics such as total cases, fatalities, and vaccination rates to uncover pandemic trends.

## Visualizations
- **Total Cases by Country**:\
  &emsp;Table showing aggregated confirmed COVID-19 cases across countries.
- **Vaccination Rates**:\
  &emsp;Chart displaying the percentage of the population vaccinated over time.

View screenshots in the [visualizations](visualizations/) folder:
- [screenshot_1.png](visualizations/screenshot_1.png): Total Cases by Country.
- [screenshot_2.png](visualizations/screenshot_2.png): Vaccination Rates.

## Technologies Used
- SQL (SQL Server)
- Excel

## Data Source
- Dataset: [Our World in Data COVID-19](https://covid.ourworldindata.org/data/owid-covid-data.xlsx) (see [Download link of Covid Data.txt](data/Download%20link%20of%20Covid%20Data.txt)).
- Split into [CovidDeaths.xls](data/CovidDeaths.xls) and [CovidVaccinations.xls](data/CovidVaccinations.xls) for analysis.

## Installation and Usage
1. Download [CovidDeaths.xlsx](https://github.com/SvalentinoB/PortProjects/blob/main/projects/covid19-data-analysis/data/CovidDeaths.xls) and [CovidVaccinations.xlsx](https://github.com/SvalentinoB/PortProjects/blob/main/projects/covid19-data-analysis/data/CovidVaccinations.xls) from the [data](data/) folder.
2. Import datasets into your SQL environment (e.g., SQL Server Management Studio).
3. Run queries from [Actual_Covid_Project_SQL.sql](https://github.com/SvalentinoB/PortProjects/blob/main/projects/covid19-data-analysis/database_file/Actual_Covid_Project_SQL.sql) to analyze the data.
4. (Optional) Review visualization screenshots in the [visualizations](https://github.com/SvalentinoB/PortProjects/tree/main/projects/covid19-data-analysis/visualizations) folder.

## License
This project is licensed under the [GNU General Public License v3.0](https://github.com/SvalentinoB/PortProjects/blob/main/LICENSE).

![License](https://img.shields.io/badge/License-GNU%20GPL%20v3.0-008000?style=flat&logo=gnu)
