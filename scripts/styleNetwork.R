## install.packages("visNetwork")
## install.packages("tidyverse")

################
## visNetwork ##
################

## More information https://datastorm-open.github.io/visNetwork/

library(visNetwork)
library(tidyverse)

# Load data
nodes <- read_csv("data/nodes_je.csv")
edges <- read_csv("data/edges_je.csv")

# utilise un data DataFrame
## nodes <- data.frame(id = 1:10)
## edges <- data.frame(from = c(1,2,5,7,8,10), to = c(9,3,1,6,4,7))

# Simple interactive plot
visNetwork(nodes, 
           edges,
           width = "100%")

# Width attribute
edges <- mutate(edges, 
                width = weight/5 + 1)

# visNetwork edge width plot
visNetwork(nodes, edges, height = "500px", width = "100%", main = "Style in Jane Eyre French translations", 
           submain = list(text = "Zoom on a cluster to visualise the chapters",
                          style = "font-family:Comic Sans MS;color:#ff0000;font-size:15px;text-align:center;"), 
           footer = "Fig.1 Chapters in clusters (stylo_CA_100_MFWs_Culled_0__Classic Delta)") %>% 
  visOptions(selectedBy = "group", nodesIdSelection = TRUE, highlightNearest = list(enabled = T, degree = 2, hover = T)) %>%
  
  visLayout(randomSeed = 123) %>% 
  
  
  visIgraphLayout(layout = "layout_with_fr") %>% 
  
  visEdges(arrows = "middle")
