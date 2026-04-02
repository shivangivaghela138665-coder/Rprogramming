#wrap to create histogram for quantity of mobile take range of interval 3 each and 0-20 limit

# STEP 0: Clear environment
rm(list = ls())
graphics.off()

# Set working directory
setwd("D:/Shivangi6005")
# Load package
library(readxl)

# Read Excel file
data <- read_excel("Mobile_Sales.xlsx")
print(data)
# Verify data
cat("Total records:", nrow(data), "\n")


# STEP 1: Draw Base Histogram

png(file = "mobile_quantity_histogram.png", width = 800, height = 600)

h <- hist(data$Qty,
          main   = "Mobile Quantity Distribution",
          xlab   = "Quantity",
          ylab   = "Frequency",
          xlim   = c(0, 20),
          ylim   = c(0, 10),
          breaks = seq(0, 20, by = 3),
          col    = "lightblue",
          border = "darkblue",
          labels = FALSE
)

# Print details
cat("Counts   :", h$counts, "\n")
cat("Midpoints:", h$mids, "\n")
cat("Breaks   :", h$breaks, "\n")
cat("Bars     :", length(h$counts), "\n")

total <- sum(h$counts)
cat("Total entries:", total, "\n")

# STEP 2: Color Each Bar using rect()


colors <- c("skyblue","lightgreen","orange","pink","lavender","yellow","cyan")

rect(xleft   = h$breaks[-length(h$breaks)],
     xright  = h$breaks[-1],
     ybottom = 0,
     ytop    = h$counts,
     col     = colors[1:length(h$counts)],
     border  = "darkblue"
)

# STEP 3: Add Count on Top

text(x      = h$mids,
     y      = h$counts + 0.3,
     labels = h$counts,
     col    = "black",
     cex    = 1.2,
     font   = 2
)


# STEP 4: Add Interval Labels Inside Bars


labels <- paste(h$breaks[-length(h$breaks)],
                "-",
                h$breaks[-1])

text(x      = h$mids,
     y      = h$counts / 2,
     labels = labels,
     col    = "darkblue",
     cex    = 0.8,
     font   = 2
)


# STEP 5: Add Legend


legend("topright",
       legend  = labels,
       fill    = colors[1:length(labels)],
       title   = "Quantity Range",
       cex     = 0.8,
       bg      = "white",
       box.col = "darkblue"
)

# STEP 6: Save File

dev.off()
cat("Histogram saved successfully!\n")

