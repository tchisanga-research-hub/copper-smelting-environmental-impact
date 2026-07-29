# copper-smelting-environmental-impact
## Overview
This repository contains the source code used for the analysis presented in the research paper:
**"Environmental Impact of Copper Smelting on Surrounding Areas: Case Study of Kankoyo Township"**

The repository provides the R and Python scripts used for data processing, statistical analyses, Regression analyses, visualization, and generation of results reported in the study.

## Repository Structure
```text
copper-smelting-environmental-impact/
│
├── python/
│   ├── Normality_Tests.ipynb
│   ├── PCA_analysis.ipynb
│   ├── Regression_Analyses.ipynb
│   └── Spearman's_Correlation.ipynb
│
├── R/
│   ├── Geographical_factors_influence_on_PTEs_Concentration.R
│   └── Soil_properties_influence_on_PTEs_concentrations.R
│
├── LICENSE
├── README.md
├── renv.lock
└── requirements.txt
```

Python Notebooks
Notebook	Description
01_notebook_name.ipynb	Performs the first stage of the Python analysis.
02_notebook_name.ipynb	Carries out additional data processing and exploratory analysis.
03_notebook_name.ipynb	Implements the main analytical methods used in the study.
04_notebook_name.ipynb	Produces supplementary analyses or validation results.
05_notebook_name.ipynb	Generates figures, tables, or additional outputs for the manuscript.

R Scripts
Script	Description
01_data_processing.R	Imports, cleans, and prepares the data for analysis.
02_statistical_analysis.R	Performs the statistical analyses presented in the study.
03_visualization.R	Generates the figures and visualizations reported in the manuscript.
## Software requirements

### R environment
The R code was developed using R version 4.5.3 and the packages listed in `renv.lock`.
The packages include: 
 - vegan
 - corrplot
 - FactoMineR
 - factoextra
 - ggplot2
 - renv

The R environment can be reproduced using:
```r
install.packages("renv")
renv::restore()
```
This will install the required R packages with the appropriate versions.

### Python environment
The Python code was developed using Python version 3.10.12 and Jupyter Notebook version 7.5.5.
Required Python dependencies are listed in `requirements.txt`.
Install the dependencies using:
```
pip install -r requirements.txt
```

## Data Availability
The datasets used in this study are not included in this repository.
The analyses scripts require the relevant input datasets to be available in the appropriate directory before execution. Please refer to the associated publication for information on data availability.

## Running the Code 

### R Scripts
1. Open the project in RStudio.
2. Restore the required R package environment using:
```r
renv::restore()
```
3. Run the R scripts located in the R/ directory. The scripts are independent and can be executed in any order; they do not need to be run sequentially.

### Jupyter Notebooks
1. Launch Jupyter Notebook using:
```
jupyter notebook
```
2. Open the notebook (.ipynb) from the python/ directory and execute the cells in the order they are written. The notebooks are independent and may be executed in any order. 

## Outputs
The scripts generate the statistical results, tables, and figures used in the research study.
The generated outputs include:
- Statistical summaries and model results
- Regression analysis results and associated figures
- Ordination analyses and associated plots
- Data visualizations
- Publication-quality figures used in the manuscript
- Tables summarizing analytical results

## Reproducibility
This repository is structured to support reproducible research by documenting the computational environments and analytical workflow used in the study.
The following files are provided:
* renv.lock records the R package environment, including the specific package versions required to reproduce the R-based analyses.
* requirements.txt records the Python dependencies required to run the Python-based analyses.
* Version-controlled R scripts and Jupyter notebooks document the complete analytical workflow and allow the analyses to be reproduced.

## Authors

**Tracy Chisanga**  
Corresponding author and repository maintainer

ORCID: https://orcid.org/0000-0001-8281-0901

For questions regarding the code or analysis, please contact:

tracy.chisanga@gmail.com

## Contributors
This repository contains code developed as part of the research study by:
- Tracy Chisanga (Corresponding author)
- Santhi Kumaran
- Josephat Kalezhi
- Omar Haji Kombo

## Citation

If you use this code, please cite the associated research article and this repository.
Software repository:
Author(s). (Year). copper-smelting-environmental-impact.
Zenodo. DOI: [insert DOI]

## License
This project is released under the MIT License.
