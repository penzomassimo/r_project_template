# ---------------------------------------------------------------
# This code performs a One-Factor Analysis Of Variance (ANOVA)
# Code developed by Massimo Penzo
# ---------------------------------------------------------------

# Loading libraries
library(ggplot2)
library(car)
library(agricolae)
library(vcd)

# Loading helper scripts
source("./scripts/helpers.R")

# Loading experimental data
df = read.csv('./data/raw_data_tensile_strength.csv')
head(df)

response = df$tensile_strength
factor = df$cotton_weight_level_name

# Show the factor levels
levels(factor)

# Boxplot of tensile strength by cotton percentage
png(filename="./plots/boxplot.png")
boxplot(
  response ~ factor,
  data = df,
  range = 0,
  main = "Car Milage Data", 
  xlab = "Treatment",
  ylab = "Tensile Strength",
  frame = TRUE,
  col = "white"
)
dev.off()

# Compute the analysis of variance
model = aov(response ~ factor, data = df)

# Summary of the analysis
model_results = summary(model)
print(model_results)

# Tests of Homogeneity of Variances
# ---------------------------------------------------------------

# Bartlett's test
bartlett.test(response ~ factor, df)

# Levene's test
leveneTest(response ~ factor, df)

# Fligner-Killeen test
fligner.test(response ~ factor, df)


# Tests of Normality
# ---------------------------------------------------------------



# Post Hoc tests
# ---------------------------------------------------------------

# Pair-wise comparisons - Tukey HSD
TukeyHSD(model, conf.level = 0.95)
# plot(TukeyHSD(model, conf.level = 0.99),las = 1, col = "red")

# Pair-wise comparisons - Fisher LSD


# Pair-wise comparisons - Bonferroni
pairwise.t.test(response, factor, p.adj = “bonferroni”)

# Pair-wise comparisons - Holm
pairwise.t.test(response, factor, p.adj = “holm”)

# Contrasts
# ---------------------------------------------------------------



# Model checking plots
# ---------------------------------------------------------------
par(mfrow = c(2,2))
plot(model)





