# Install XML package if not already installed
if (!requireNamespace("XML", quietly = TRUE)) {
  install.packages("XML")
}

library(XML)

setwd("D:/2026 Subjects/BCA 4 - R Programming/Syllabus Programs/R/ExternalFiles")
# ── Read and parse the XML file ────────────────────────────────────────────────
xml_file <- "myxml.xml"   # <-- change this to your actual file path
doc <- xmlParse(xml_file)

# ── Get root node ──────────────────────────────────────────────────────────────
root <- xmlRoot(doc)
cat("Root node name:", xmlName(root), "\n")
cat("Number of children:", xmlSize(root), "\n")

# ── Access child nodes ─────────────────────────────────────────────────────────
cat("\nChild node names:\n")
print(names(root))

# ── Convert to a list for easy exploration ────────────────────────────────────
xml_list <- xmlToList(doc)
cat("\nXML as R list (first element):\n")
print(xml_list[[1]])
print(xml_list[[2]])
# ── Convert to data frame (works well for flat/tabular XML) ───────────────────
df <- xmlToDataFrame(doc)
cat("\nXML as Data Frame:\n")
print(df)

# ── XPath queries ──────────────────────────────────────────────────────────────
nodes <- xpathSApply(doc, "//name", xmlValue)   # adjust XPath as needed
cat("\nAll <name> values:\n")
print(nodes)
