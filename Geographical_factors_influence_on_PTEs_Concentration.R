# Packages
library(vegan)
library(corrplot)
library(FactoMineR)
library(factoextra)
library(ggplot2)
library(renv)

renv::init()
renv::snapshot()
### Importing the Topsoil Dataset ###

if (!file.exists("data/Topsoil_RS.csv")) {
  stop("Topsoil_RS.csv not found. Please obtain the dataset and place it in the data folder.")
}
dft <- read.csv("data/Topsoil_RS.csv")

#######################################################################################################
### 1.0 Geographical factors influence on PTEs concentrations in Top-surface soil layer (PERMANOVA) ###
#######################################################################################################
### 1.1: Defining Variables ###
geo_fea <- dft[, c("Elevation","dES","dRD")] # Select geographical variables
metal_fea <- dft[, c("As","Cd","Pb","Zn","Cu","Fe")] # Select metal variables

### 1.2: Log transform + scale ###
geo_fea$dES <- log(geo_fea$dES) # convert to natural log
geo_fea$dRD <- log(geo_fea$dRD) # convert to natural log
geo_log_scaled <- scale(geo_fea) # Standardize
metals_log_scaled <- scale(log(metal_fea+ 1)) # log transform + standardize (1 is added to handle zeros)

summary(geo_log_scaled) # check
summary(metals_log_scaled) # check

### 1.3: Run adonis2 (Permutational multivariate analysis of Variance (PERMANOVA)) on the Topsoil layer ###
adonis_result_margin_gls <- adonis2(metals_log_scaled ~ Elevation + dES + dRD, 
                                    data = as.data.frame(geo_log_scaled), 
                                    permutations = 999, method = "euclidean", by = "margin")
adonis_result_margin_gls

### 1.4 Saving the Results ###
adonis_df_margin_gls <- as.data.frame(adonis_result_margin_gls) # Convert to data frame
write.csv(adonis_df_margin_gls, "data/Geographical_factors_influence_on_PTEs_Concentration.csv", row.names = TRUE)  # Save

#####################################################################################
### 2.0 Variation in PTEs concentration across sites in relation to distance from 
### source (dES), elevation, and dRD (dbRDA)
#####################################################################################

env <- dft[, c("Elevation","dES","dRD")] # select geographical variables
metals_geo <- dft[, c("As","Cd","Pb","Zn","Cu","Fe")] # select metal variables

metals_log <- log(metals_geo + 1) # log transform + standardize (1 is added to handle zeros)

### env <- as.data.frame(scale(geo[, c("Elevation", "dES", "dRD")])) # env is scaled

model <- capscale(metals_log ~ Elevation + dES + dRD, data = env) # capscale() fits a constrained ordination model,
                                                                  # also known as distance-based redundancy analysis (dbRDA).

anova(model) # performs a permutation ANOVA on the overall dbRDA model.
anova(model, by = "term") # performs a sequential (Type I) permutation test for each explanatory variable.

plot(model)

sites <- scores(model, display = "sites") # Extract the ordination coordinates (site scores) for each sample
env_fit <- scores(model, display = "bp") # Extract the biplot scores (environmental vectors) for the explanatory variables

sites_df <- as.data.frame(sites) # Convert the site scores into a data frame for plotting with ggplot2
sites_df$dES <- env$dES # Add the dES values to the site scores data frame for colouring or labelling points

env_df <- as.data.frame(env_fit) # Convert the environmental vector scores into a data frame
env_df$variable <- rownames(env_df) # Store the environmental variable names (e.g., Elevation, dES, dRD) in a new column

# Start a ggplot using the first two constrained ordination axes (CAP1 and CAP2)
ggplot(sites_df, aes(x = CAP1, y = CAP2)) +
  
  # points
  geom_point(aes(color = dES), size = 3, alpha = 0.85) +
  
  # confidence ellipse
  stat_ellipse(type = "t", level = 0.68) +
  
  # environmental arrows
  geom_segment(data = env_df,
               aes(x = 0, y = 0, xend = CAP1, yend = CAP2),
               arrow = arrow(length = unit(0.25, "cm")),
               color = "black") +
  
  geom_text(data = env_df,
            aes(x = CAP1, y = CAP2, label = variable),
            vjust = -0.5, size = 4) +
  
  # color scale
  scale_color_viridis_c() +
  
  # clean theme
  theme_minimal(base_size = 14) +
  theme(
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    plot.title = element_text(face = "bold", size = 16)
  ) +
  
  labs(
    #title = "dbRDA of PTEs Concentration",
    x = "dbRDA 1",
    y = "dbRDA 2",
    color = "Distance from source"
  )
all(rownames(metals_log) == rownames(geo_fea))
pdf("dbRDA_plot_Final.pdf", width = 2000, height = 1500) # save the figure from the plots window as either image file or pdf file
plot(model)
dev.off()
RsquareAdj(model)

