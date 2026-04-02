# ============================================================
# Mobile Sales Pie Chart - Processor Distribution
# ============================================================

# STEP 0: Clear environment
rm(list = ls())
graphics.off()

# Set working directory
getwd()
setwd("D:/Shivangi6005"))

# STEP 1: Load Data

library(readxl)
data <- read_excel("Mobile_Sales.xlsx")

# Check data
print(data)
colnames(data)

# STEP 2: Create Data for Pie Chart

processor_count <- table(data$Processor)

# Labels
labels <- names(processor_count)

# STEP 3: Create Pie Chart Image

png(file = "mobile_processor.png")

# Colors
colors <- rainbow(length(processor_count))

# Plot Pie Chart
pie(processor_count,
    labels = labels,
    main = "Processor Distribution of Mobiles",
    col = colors)

# STEP 4: Add Legend

legend("topright",
       labels,
       cex = 0.8,
       fill = colors)


# STEP 5: Save File

dev.off()
cat("Pie chart saved successfully!\n")
