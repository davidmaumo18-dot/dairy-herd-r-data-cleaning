- Dairy Herd R Data Cleaning & EDA

- Overview
  
Simulated dairy herd dataset (50 cows) analyzed in R to demonstrate data 
cleaning, exploratory data analysis, and breed-level performance insights — 
built as part of a data analytics mentorship track.

- Tools
  
R, dplyr, ggplot2, janitor

-Process

- Loaded and validated the dataset (missing values, duplicates, type checks)
- Computed descriptive statistics (yield, weight, feed intake)
- Calculated feed efficiency (milk yield per kg feed/day)
- Compared breeds on yield, weight, efficiency, and health risk
- Visualized yield distribution, breed comparisons, and weight-yield relationship

- Key Insight
  
Friesian cows showed the highest milk yield (20.8 L/day) and best feed 
efficiency (1.33 L/kg), with moderate health risk (20%). Guernsey cows, 
while lower-yielding, had zero health incidents in this sample — a 
lower-risk alternative. Jersey cows carried the highest health risk (40%) 
without an efficiency advantage over Friesian.

- Files
  
- `cleaning_and_eda.R` — full analysis script
- `dairy_herd.csv` — simulated dataset
- `Rplot.png`, `Rplot01.png`, `Rplot02.png` — visualizations
