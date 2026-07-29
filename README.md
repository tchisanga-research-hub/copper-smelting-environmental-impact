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

Repository Structure
copper-smelting-environmental-impact/
│
├── R/
│   ├── 01_data_processing.R
│   ├── 02_statistical_analysis.R
│   └── 03_visualization.R
│
├── python/
│   ├── 01_notebook_name.ipynb
│   ├── 02_notebook_name.ipynb
│   ├── 03_notebook_name.ipynb
│   ├── 04_notebook_name.ipynb
│   └── 05_notebook_name.ipynb
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

R Scripts
Script	Description
01_data_processing.R	Imports, cleans, and prepares the data for analysis.
02_statistical_analysis.R	Performs the statistical analyses presented in the study.
03_visualization.R	Generates the figures and visualizations reported in the manuscript.
Python Notebooks
Notebook	Description
01_notebook_name.ipynb	Performs the first stage of the Python analysis.
02_notebook_name.ipynb	Carries out additional data processing and exploratory analysis.
03_notebook_name.ipynb	Implements the main analytical methods used in the study.
04_notebook_name.ipynb	Produces supplementary analyses or validation results.
05_notebook_name.ipynb	Generates figures, tables, or additional outputs for the manuscript.
## Software requirements

### R environment
The R analyses were developed using R and the packages listed in `renv.lock`.
These include: 
- R version 4.5.3
- Packages:
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
The Python code was developed using Python 3.10.12 and Jupyter Notebook 7.5.5.
Required Python dependencies are listed in `requirements.txt`.
Install the required Python packages using:
```
pip install -r requirements.txt

## Data Availability

The datasets used in this study are not included in this repository.
The analyses scripts require the relevant input datasets to be available in the appropriate directory before execution. Please refer to the associated publication for information on data availability.

## Running the Analysis

### R Analysis

1. Open the project in RStudio.
2. Restore the R environment:

```r
renv::restore()
```
3. Run the R scripts in any order, as they are independent and do not need to be executed sequentially.

```
01_data_processing.R
02_statistical_analysis.R
03_visualization.R
```

### Python Analyses
The Python analyses were developed using Jupyter Notebook 7.5.5.

Install the required Python packages:

pip install -r requirements.txt

Launch Jupyter Notebook:

jupyter notebook

Open the notebooks in the python/ directory. The notebooks are independent and may be executed in any order.



The Python analyses were developed using Jupyter Notebook (version 7.5.5).

After installing the required packages, launch Jupyter Notebook:

jupyter notebook

Then open the notebook (.ipynb) from the python/ directory and run the cells in the order in which they appear.

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
