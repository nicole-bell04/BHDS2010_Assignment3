# BHDS2010 Assignment 3:Text Messaging Study

## Project Overview
This repository contains a statistical analysis evaluating text messaging frequency across two intervention cohorts (**Group 1** and **Group 2**) observed longitudinally at two distinct time points: **Baseline** and **6 Months**.
The primary objective is to clean and restructure the wide-format dataset, calculate stratified descriptive statistics, and generate visualizations (boxplots and bar charts) evaluating changes in messaging volume over time.

---

## Team Members & Role Distribution

| Team Member | Role | Core Deliverables |
| :--- | :--- | :--- |
| **Justin Coles** | Data Wrangling, Summary Statistics & Documentation | Data reshaping (`pivot_longer`), stratified `pastecs::stat.desc` summary tables, inferential summaries, and repository documentation (`README.md`). |
| **Nicole Bellantoni** | Visualizations | Stratified boxplots and  bar charts with error bars by Group and Time. |

---

## Repository Structure

```text
├── README.md                     # Project overview, setup guide, and contribution breakdown
├── TextMessages.csv              # Original wide-format longitudinal dataset
├── TextMessages_Clean_Long.csv   # Tidy long-format dataset generated for faceted plotting
├── BHDS2010_Assingment3.Rmd      # Reproducible R Markdown analytical report
└── BHDS2010_Assingment3.pdf      # Knitted PDF report containing code, output, and inferences