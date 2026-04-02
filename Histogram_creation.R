# ============================================================
# City Population Histogram - 5 Age Categories (ERROR FIXED)
# ============================================================

# STEP 0: Clear environment before running
rm(list = ls())           # removes all old variables
graphics.off()            # closes all open graphic devices

# Set working directory
setwd("D:/rprogram6005")

# Create population data vector
# 0-15  : Children       - 5 people
# 16-30 : Youth          - 6 people
# 31-45 : Young Adult    - 6 people
# 46-60 : Middle Age     - 3 people
# 61-75 : Senior Citizen - 2 people
population <- c(
  # Children (0-15)
  5, 8, 3, 12, 14,
  
  # Youth (16-30)
  17, 19, 22, 25, 28, 19,
  
  # Young Adult (31-45)
  31, 35, 38, 42, 45, 33,
  
  # Middle Age (46-60)
  48, 51, 55,
  
  # Senior Citizen (61-75)
  73, 62
)

# Verify data loaded correctly
cat("Total values entered:", length(population), "\n")

# Open PNG file to save output
png(file = "city_population_5categories.png", width = 800, height = 600)

# ============================================================
# STEP 1: Draw Base Histogram
# ============================================================

h <- hist(population,
          main   = "City Population by Age Groups",
          xlab   = "Age Groups (Years)",
          ylab   = "Number of People",
          xlim   = c(0, 75),
          ylim   = c(0, 10),
          breaks = c(0, 15, 30, 45, 60, 75),
          col    = "skyblue",
          border = "darkblue",
          labels = FALSE
)

# FIXED: Safe individual print statements (no sum error)
cat("Counts   :", h$counts,       "\n")
cat("Midpoints:", h$mids,         "\n")
cat("Breaks   :", h$breaks,       "\n")
cat("Bar count:", length(h$counts), "\n")

# FIXED: sum() on its own line clearly
total <- sum(h$counts)
cat("Total people:", total, "\n")

# ============================================================
# STEP 2: Color Each Bar using rect()
# ============================================================

colors <- c("skyblue",      # Bar 1 : Children       (0-15)
            "lightgreen",   # Bar 2 : Youth           (16-30)
            "orange",       # Bar 3 : Young Adult     (31-45)
            "pink",         # Bar 4 : Middle Age      (46-60)
            "lavender"      # Bar 5 : Senior Citizen  (61-75)
)

rect(xleft   = h$breaks[-length(h$breaks)],
     xright  = h$breaks[-1],
     ybottom = 0,
     ytop    = h$counts,
     col     = colors,
     border  = "darkblue"
)

# ============================================================
# STEP 3: Add Count ON TOP of Each Bar
# ============================================================

text(x      = h$mids,
     y      = h$counts + 0.4,
     labels = h$counts,
     col    = "black",
     cex    = 1.3,
     font   = 2
)

# ============================================================
# STEP 4: Add Label INSIDE Each Bar
# ============================================================

bar_labels <- c("0-15",
                "16-30",
                "31-45",
                "46-60",
                "61-75"
)

text(x      = h$mids,
     y      = h$counts / 2,
     labels = bar_labels,
     col    = "darkblue",
     cex    = 0.9,
     font   = 2
)

# ============================================================
# STEP 5: Add Legend
# ============================================================

legend("topright",
       legend  = c("0-15  : Children",
                   "16-30 : Youth",
                   "31-45 : Young Adult",
                   "46-60 : Middle Age",
                   "61-75 : Senior Citizen"),
       fill    = colors,
       title   = "Age Categories",
       cex     = 0.90,
       bg      = "white",
       box.col = "darkblue"
)

# ============================================================
# STEP 6: Save and Close File
# ============================================================

dev.off()
cat("File saved successfully!\n")