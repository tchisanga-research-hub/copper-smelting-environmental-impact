# Packages
library(vegan)

#################################################################################################
### 1.0. Influence of soil properties on PTEs concentration in the Topsoil layer (PERMANOVA) ###
#################################################################################################

### 1.1:  Importing the Topsoil Dataset ###

if (!file.exists("data/Topsoil_RS.csv")) {
  stop("Topsoil_RS.csv not found. Please obtain the dataset and place it in the data folder.")
}
dft <- read.csv("data/Topsoil_RS.csv")

### 1.2: Defining Variables ###
metals_t <- dft[, c("As","Cd","Pb","Zn","Cu","Fe")] # select metal variables
soil_t <- dft[, c("pH","Organic_matter")] # select soil properties

### 1.3: Standardizing Soil variables ###
# Organic matter was log-transformed prior to analysis to reduce right skewness
soil_t$Organic_matter <- log(soil_t$Organic_matter) # Organic matter log-transformed
soil_vars_t <- soil_t[, c("pH", "Organic_matter")] # Soil properties
soil_vars_scaled_t <- scale(soil_vars_t) # Standardize
summary(soil_vars_scaled_t) # Check

### 1.4: Standardizing metals variables ###
metal_vars_t <- metals_t[, c("As","Cd","Pb","Zn","Cu","Fe")] # metal variables
metals_scaled_t <- scale(log(metal_vars_t+ 1)) # convert to natural log and Standardize (1 is added to handle zeros)
summary(metals_scaled_t) # Check

### 1.5: Run adonis2 (Permutational multivariate analysis of Variance (PERMANOVA)) on the Topsoil layer ###
adonis_result_margin_t <- adonis2(metals_scaled_t ~ pH + Organic_matter, 
                                  data = as.data.frame(soil_vars_scaled_t), 
                                  permutations = 999, method = "euclidean", by = "margin") 

# The by = "margin" option is used so that the effect of each soil property is tested while accounting 
# for the other soil property

adonis_result_margin_t
### 1.6: Saving the Results ###
adonis_df_margin_t <- as.data.frame(adonis_result_margin_t) # Convert to data frame
write.csv(adonis_df_margin_t, "data/PERMANOVA_topsoil_properties_influence_on_PTEs.csv", row.names = TRUE)  # Save

#################################################################################################
### 2.0. Influence of soil properties on PTEs concentration in the Subsoil layer (PERMANOVA) ###
#################################################################################################

### 2.1: Importing Subsoil Dataset ###
if (!file.exists("data/Subsoil_SR.csv")) {
  stop("Subsoil_SR.csv not found. Please obtain the dataset and place it in the data folder.")
}
dfs <- read.csv("data/Subsoil_SR.csv")

### 2.2: Defining Variables ###
metals_s <- dfs[, c("As","Cd","Pb","Zn","Cu","Fe")] # select metal variables
soil_s <- dfs[, c("pH","Organic_matter")] # select soil properties

### 2.3: Standardizing Soil variables ###
# Organic matter was log-transformed prior to analysis to reduce right skewness
soil_s$Organic_matter <- log(soil_s$Organic_matter) # natural log OM
soil_vars_s <- soil_s[, c("pH", "Organic_matter")] # Soil properties
soil_vars_scaled_s <- scale(soil_vars_s) # Standardize
summary(soil_vars_scaled_s) # Check

### 2.4: Standardizing metals variables ###
metal_vars_s <- metals_s[, c("As","Cd","Pb","Zn","Cu","Fe")] # metal variables
metals_scaled_s <- scale(log(metal_vars_s+ 1)) # Standardize ((1 is added to handle zeros))
summary(metals_scaled_s) # Check

### 2.5: Run adonis2 (Permutational multivariate analysis of Variance (PERMANOVA)) on the subsoil layer ###
adonis_result_margin_s <- adonis2(metals_scaled_s ~ pH + Organic_matter, 
                                  data = as.data.frame(soil_vars_scaled_s), 
                                  permutations = 999, method = "euclidean", by = "margin")

# The by = "margin" option is used so that the effect of each soil property is tested while accounting 
# for the other soil property

adonis_result_margin_s
### 2.6: Saving the Results ###
adonis_df_margin_s <- as.data.frame(adonis_result_margin_s) # Convert to data frame
write.csv(adonis_df_margin_s, "data/PERMANOVA_subsoil_properties_influence_on_PTEs.csv", row.names = TRUE)  # Save


