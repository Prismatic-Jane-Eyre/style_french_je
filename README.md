# <a href="https://digitalkoine.github.io/style_french_je/">Stylometry (Network Analysis) - Proof of Concept Jane Eyre French translations</a>

This repository contains a proof-of-concept implementation showcasing the possibilities of network analysis and stylometry. The code provided demonstrates the creation of an interactive network graph using the `visNetwork` package in R, allowing for the visualization and exploration of relationships within a network of chapters of the novels de Charlotte Brontë.

## Dataset

The dataset used in this example consists of two files: `nodes.csv` and `edges.csv`. These files contain the node and edge information, respectively, representing the network structure.

## Dependencies

To run the code and generate the interactive graph, you will need the following dependencies:

- R programming language
- `visNetwork` package
- `tidyverse` package

You can install the required packages using the following commands:

```R
install.packages("visNetwork")
install.packages("tidyverse")


Usage

Clone or download this repository to your local machine.
Place your dataset files (nodes.csv and edges.csv) in the data directory.
Open the R script file (stylometry_analysis.R) in RStudio or your preferred R environment.
Install the necessary packages by running the installation commands mentioned in the Dependencies section.
Modify the script if required, such as adjusting parameters or file paths.
Run the script to generate the interactive network graph.
Graph Visualization

The generated graph visualizes the stylometric relationships between texts in the corpus. It provides an interactive interface that allows you to explore the connections and patterns within the stylometric network. By hovering over nodes or edges, you can view additional information or tooltips associated with each element.

Please note that this implementation is a proof of concept and can be customized and extended to suit specific stylometry analysis requirements.

Feedback and Contributions

Feedback, suggestions, and contributions are welcome! If you have any ideas or improvements to share, please feel free to open an issue or submit a pull request.

License

This project is licensed under the MIT License.
