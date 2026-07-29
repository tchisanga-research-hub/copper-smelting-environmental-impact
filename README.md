# copper-smelting-environmental-impact
## Overview
This repository contains the source code used for the analysis presented in the research paper:
**"Environmental Impact of Copper Smelting on Surrounding Areas: Case Study of Kankoyo Township"**

The repository provides the R and Python scripts used for data processing, statistical analyses, Regression analyses, visualization, and generation of results reported in the study.

## Repository Structure
```
copper-smelting-environmental-impact/
│
├── R/
│   ├── 01_data_processing.R
│   ├── 02_statistical_analysis.R
│   └── 03_visualization.R
│
├── python/
│   └── analysis.py
│
├── renv/
│   ├── activate.R
│   └── settings.json
│
├── renv.lock
├── requirements.txt
├── README.md
├── LICENSE
└── CITATION.cff
```

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





---

## Software Requirements

### R Environment

The R analyses were developed using R and the packages listed in `renv.lock`.

The R environment can be reproduced using:

```r
install.packages("renv")
renv::restore()
```

This will install the required R packages with the appropriate versions.

### Python Environment

Python dependencies are listed in:

```
requirements.txt
```

Install the required Python packages using:

```bash
pip install -r requirements.txt
```

---

## Data Availability

The datasets used in this study are not included in this repository.

The analysis scripts require the relevant input datasets to be available in the appropriate directory before execution. Please refer to the associated publication for information on data sources and availability.

If applicable, replace this section with details on how the data can be accessed.

---

## Running the Analysis

### R Analysis

1. Open the project in RStudio.
2. Restore the R environment:

```r
renv::restore()
```

3. Run the R scripts in numerical order:

```
01_data_processing.R
02_statistical_analysis.R
03_visualization.R
```

### Python Analysis

Ensure the Python environment is configured:

```bash
pip install -r requirements.txt
```

Then run:

```bash
python analysis.py
```

---

## Outputs

The scripts generate the statistical results, tables, and figures used in the research study.

Generated outputs may include:

* Statistical summaries
* Ordination analyses
* Data visualizations
* Publication-quality figures

---

## Reproducibility

This repository uses:

* `renv.lock` to record the R package environment.
* `requirements.txt` to record Python dependencies.
* Version-controlled scripts to document the analytical workflow.

These files allow other researchers to recreate the computational environment used in the study.

---

## Citation

If you use this code or adapt the analysis workflow, please cite the associated research article and this repository.

Suggested citation:

```
Author(s). Environmental Impact of Copper Smelting on Surrounding Areas:
Case Study of Kankoyo Township. [Journal/Conference details].

Software repository:
Author(s). (Year). copper-smelting-environmental-impact.
Zenodo. DOI: [insert DOI]
```

---

## License

This project is released under the MIT License.

See the `LICENSE` file for details.

---

## Author

**[Your Name]**

ORCID: [Your ORCID iD]

For questions regarding the code or analysis, please contact:

[Your email address]
