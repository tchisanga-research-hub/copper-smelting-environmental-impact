# Code for: Environmental Impact of Copper Smelting on Surrounding Areas: Case Study of Kankoyo Township
## Overview
This repository contains the analyses scripts and code for the manuscript:
**Authors:** Tracy Chisanga<sup>1*</sup>, Santhi Kumaran<sup>2</sup>, , Josephat Kalezhi<sup>2</sup> ,Omar Haji Kombo<sup>3</sup>
**Affiliations:** <sup>1,2</sup> The Copperbelt University, <sup>3</sup>The State University of Zanzibar
**Contact:** Corresponding Author (*tracy.chisanga@cbu.ac.zm*)
**Status:** Accepted in Principle / Forthcoming (2026)
**Journal:** Scientific Reports
**Official Paper DOI:** [Pending - Will be updated upon final publication]
**Code DOI:** https://doi.org

## How to Cite This Work
A permanent DOI and full citation will be added here upon formal publication. In the meantime, if you use this code, please cite this archive repository:

## Data Availability
The datasets used in this study are not included in this repository.

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
## Jupyter Notebooks

| Notebook | Description |
|----------|-------------|
| `Normality_Tests.ipynb` | Assesses the normality distribution of soil properties and potentially toxic elements (PTEs) in both the topsoil and subsoil layers using the Shapiro–Wilk test. The analyses identifies significant departures from normality using p-values (α = 0.05) and calculates skewness and kurtosis to describe the distribution characteristics of the data. |
| `PCA_analysis.ipynb` | Performs Principal Component Analysis (PCA) to investigate differences in the multivariate distribution of PTEs between topsoil and subsoil samples. The analysis reduces data dimensionality, identifies major patterns of variation, and uses PCA biplots to visualize similarities and differences between soil layers in ordination space. |
| `Regression_Analyses.ipynb` | Performs linear regression analysis to evaluate relationships between distance from emission source (dES) and soil properties, including pH, organic matter (OM), and PTEs concentrations in the topsoil layer. |
| `Spearman's_Correlation.ipynb` | Performs Spearman rank correlation analysis to evaluate relationships among PTEs within each soil profile and investigates vertical relationships between topsoil and subsoil pH, organic matter, and PTEs concentrations. |

## R Scripts

| Script | Description |
|--------|-------------|
| `Geographical_factors_influence_on_PTEs_Concentration.R` | Performs multivariate analyses to evaluate the influence of geographical factors on potentially toxic elements (PTEs) concentrations in the topsoil layer. The script applies PERMANOVA to assess the effects of elevation, distance from the emission source (dES), and distance from major roads (dRD), and uses distance-based redundancy analysis (dbRDA) to explore relationships between geographical factors and PTEs distributions. |
| `Soil_properties_influence_on_PTEs_concentrations.R` | Performs PERMANOVA to evaluate the influence of soil properties, specifically pH and organic matter (OM), on PTEs concentrations in topsoil and subsoil layers. The script assesses how variations in soil characteristics explain differences in PTEs composition between soil profiles. |


## Software requirements

### Python environment
The Python code was developed using Python version 3.10.12 and Jupyter Notebook version 7.5.5.
Required Python dependencies are listed in `requirements.txt`.
Install the dependencies using:
```
pip install -r requirements.txt
```
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

## Running the Code 

### Jupyter Notebooks
1. Launch Jupyter Notebook using:
```
jupyter notebook
```
2. Open the notebooks (`.ipynb`) from the `python/` directory and execute the cells in the order they are written. The `Normality_Tests.ipynb` notebook should be run first, as the results determine the appropriate statistical approaches for the downstream analyses. The remaining notebooks can then be executed as required, depending on the selected analytical workflow.

### R Scripts
1. Open the project in RStudio.
2. Restore the required R package environment using:
```r
renv::restore()
```
3. Run the R scripts located in the R/ directory. The scripts are independent and can be executed in any order; they do not need to be run sequentially.

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
This repository supports reproducible research by documenting the computational environments and analytical procedures used in the study.
The following files are provided:
* `renv.lock` records the R package environment, including the specific package versions required to reproduce the R-based analyses.
* `requirements.txt` records the Python dependencies required to run the Python-based analyses.
* Version-controlled R scripts and Jupyter notebooks document the statistical analyses, visualizations, and computational procedures used in the study, enabling the reproduction of the reported results, figures, and tables.

## License
This project is released under the MIT License.
