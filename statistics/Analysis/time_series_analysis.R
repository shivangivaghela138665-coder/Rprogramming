#Time series Analysis in R
# Time Series Analysis is used to study data points collected or recorded at specific time intervals.
# Example: Monthly sales data, daily stock prices, yearly rainfall, etc.

# Create a simple time series dataset
# Suppose we have monthly sales data for 7 months
sales <- c(100, 120, 130, 125, 140, 150, 160)

# Convert data into a time series object
# frequency = 12 means monthly data (12 periods in a year)
ts_data <- ts(sales, frequency = 12, start = c(2025, 1))  # starting Jan 2025

# Print the time series object
ts_data

# Plot the time series
plot(ts_data,
     main = "Monthly Sales Time Series",
     xlab = "Time (Months)",
     ylab = "Sales",
     col = "blue",
     lwd = 2)

# Decompose the time series into trend, seasonal, and random components
decomp <- decompose(ts_data)
plot(decomp)

# Fit an ARIMA model for forecasting
# auto.arima() automatically selects the best ARIMA parameters

library(forecast)
fit <- auto.arima(ts_data)

# Show model summary
summary(fit)

# Forecast next 5 months
forecast_vals <- forecast(fit, h = 5)

# Plot forecast
plot(forecast_vals,
     main = "Sales Forecast for Next 5 Months",
     xlab = "Time",
     ylab = "Sales")
