# Simple Linear Regression - Fuel Consumption Analysis

![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=flat&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.2.2-150458?style=flat&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-1.26-013243?style=flat&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-3.8-11557C?style=flat&logo=matplotlib&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-0.13-1F77B4?style=flat&logo=seaborn&logoColor=white)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-1.2.2-F7931E?style=flat&logo=scikit-learn&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=flat&logo=jupyter&logoColor=white)

A data science project to perform simple linear regression analysis on vehicle fuel consumption data, predicting the impact of horsepower (HP) on fuel economy (Miles Per Gallon, MPG) using Python. The project leverages libraries such as `pandas`, `numpy`, `matplotlib`, `seaborn`, and `scikit-learn` for data processing, visualization, and modeling.

## Visualizations
- **HP vs. MPG Scatter Plot**: Displays the relationship between horsepower and fuel economy with a fitted regression line.
- **Joint Plot**: Combines a scatter plot with histograms to visualize the distribution of HP and MPG.

## Technologies Used
- Python (pandas, numpy, matplotlib, seaborn, scikit-learn)
- Jupyter Notebook

## Data Sources
- Dataset: `FuelEconomy.csv` contains 100 entries with:
  - Independent Variable (X): Horse Power
  - Dependent Variable (Y): Fuel Economy (MPG)
  - Location: [data/FuelEconomy.csv](data/FuelEconomy.csv)

## Installation and Usage
1. Clone the repository and navigate to the project folder.
2. Install dependencies: `pip install pandas numpy matplotlib seaborn scikit-learn`.
3. Open [Simple_Linear_Regression_Fuel_Consumption.ipynb](Simple_Linear_Regression_Fuel_Consumption.ipynb) in Jupyter Notebook.
4. Run the notebook to load, explore, visualize, and predict fuel economy based on horsepower.

## Results
- The model indicates a negative correlation between horsepower and MPG.
- Example prediction: For 240 HP, the predicted MPG is approximately 21.32.

## License
This project is licensed under the [GNU General Public License v3.0](https://github.com/SvalentinoB/PortProjects/blob/main/LICENSE).

![License](https://img.shields.io/badge/License-GNU%20GPL%20v3.0-008000?style=flat&logo=gnu)
