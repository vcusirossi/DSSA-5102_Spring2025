# Data Gathering & Warehousing
## DSSA-5102 - Spring 2025
_Data Science and Strategic Analytics Graduate Program_ - [Stockton University](https://www.stockton.edu/)

### Repository Overview
This repository contains assignments and datasets for the Data Gathering & Warehousing course (DSSA-5102) at Stockton University. The focus of this course is on identifying, cleaning, and managing data to create effective data warehouses. Each assignment builds upon the previous work, leading up to creating a fully functional database.

### Languages & Environment
- **Languages:** Python, SQL
- **Tools & Platforms:** Anaconda Navigator, Jupyter Notebook, GitHub, Spyder

---

## Datasets

### 1. Data Science Salaries Dataset (`ds_salaries.csv`)
- **Source:** [Kaggle - Data Science Salaries](https://www.kaggle.com/datasets/ruchi798/data-science-job-salaries)
- **Collection Method:** Data was collected through job scraping and self-reported salary data from professionals in the data science field.
- **Extraction Method:** Downloaded as a CSV file from Kaggle.
- **Cleaning Program:** Data was cleaned using Python, specifically in Jupyter Notebook.
- **Cleaning/Transformation Steps:**
  - Removed null values.
  - Normalized salary data to a consistent currency (USD).
  - Renamed columns for clarity.
  - Filtered out outlier salary values using IQR method.
- **Units of Numeric Data:**
  - Salary is represented in USD ($).
  - Experience level is represented as ordinal values (e.g., EN, MI, SE, EX).
- **Column Definitions:**
  - `work_year`: Year of the recorded salary.
  - `experience_level`: Professional experience level.
  - `job_title`: Job title of the professional.
  - `salary`: Salary in USD.
  - `salary_currency`: Original currency of the salary.
  - `employee_residence`: Country of residence.
  - `remote_ratio`: Percentage of remote work allowed.
  - `company_location`: Location of the company.
  - `company_size`: Size of the company (S, M, L).
- **Regulations & Use:** Data is publicly available under the Creative Commons License (CC BY-SA 4.0).

### 2. Global Internet Users Dataset (`internet_users.csv`)
- **Source:** [World Bank Data](https://data.worldbank.org/indicator/IT.NET.USER.ZS)
- **Collection Method:** Collected through national surveys and global statistics.
- **Extraction Method:** CSV download from the World Bank website.
- **Cleaning Program:** Cleaned using Python in Jupyter Notebook.
- **Cleaning/Transformation Steps:**
  - Removed incomplete rows.
  - Converted percentage values to decimal form for analysis.
  - Reformatted date columns for consistency.
- **Units of Numeric Data:**
  - Internet usage is represented as a percentage of the population.
- **Column Definitions:**
  - `Country Name`: Name of the country.
  - `Country Code`: ISO code of the country.
  - `Year`: Year of the data.
  - `Internet Users %`: Percentage of the population using the internet.
- **Regulations & Use:** Freely available for educational and research purposes under the World Bank's open data policy.

---

## Assignments
- **Assignment #1:** Locating a Dataset
  - Imported data and conducted an initial exploration of the dataset.
- **Assignment #2:** Cleaning our Dataset
  - Focused on preparing the dataset for database integration.
- **Assignment #3:** Metadata
  - Created this detailed metadata file.
- **Assignment #4 & #5:** Only Murders in the...Database?
  - Practiced basic SQL commands and queries.
- **Assignment #6:** Creating a Database from Scratch
  - Built a database locally and using MySQL Workbench.

---

## References
- Kaggle Dataset: https://www.kaggle.com/datasets/ruchi798/data-science-job-salaries
- World Bank Dataset: https://data.worldbank.org/indicator/IT.NET.USER.ZS

### Links
- **GitHub Account:** [Your GitHub Profile](https://github.com/YourUsername)
- **Repository Link:** [Class Repository](https://github.com/YourRepository)

