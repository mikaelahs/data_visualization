# data_visualization
This repository contains some data visualizations completed for a Data and Information Visualization class that was part of the MSAN program. There are some static figures as well as interactive applications that use Shiny. To run the Shiny apps, see below.

## life_expectancy_vs_fertility_rate

The following packages must be installed prior to running this code:

- `shiny`
- `ggvis`
- `reshape2`

To run this code, please enter the following commands in R:

```
library(shiny)
shiny::runGitHub("mikaelahs/data_visualization", subdir = "shiny_apps/life_expectancy_vs_fertility_rate")
```

## facebook_metrics

The following packages must be installed prior to running this code:

- `shiny`
- `reshape2`
- `ggplot2`
- `plotly`
- `GGally`

To run this code, please enter the following commands in R:

```
library(shiny)
shiny::runGitHub("mikaelahs/data_visualization", subdir = "shiny_apps/facebook_metrics")
```

