# copper-smelting-environmental-impact
Python and R code supporting the analyses in the paper "Environmental Impact of Copper Smelting on Surrounding Areas - Case Study of Kankoyo Township".
### Software requirements

### R environment
- R version 4.5.3
- Packages:
  - vegan
  - corrplot
  - FactoMineR
  - factoextra
  - ggplot2
  - renv

The R package environment is provided in `renv.lock` and can be restored using:

```r
install.packages("renv")
renv::restore()
### Python environment
- Python version 3.10.12
- Packages:
  - scipy==1.15.3
  - statsmodels==0.14.6
  - scikit-learn==1.7.2
  - numpy==2.2.6
  - openpyxl==3.1.5
  - pandas==2.3.3
  - seaborn==0.13.2
  - matplotlib==3.10.8
  - notebook==7.5.5
