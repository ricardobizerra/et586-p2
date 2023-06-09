library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)
library(DT)
library(lubridate)

# Load dataset
starbucks <- read.csv("Starbucks_stock_history.csv")
starbucks <- starbucks[,-ncol(starbucks)]
starbucks <- starbucks[,-(ncol(starbucks) - 1)]
starbucks$Date <- as.POSIXct(starbucks$Date, format = "%Y-%m-%d")

choices <- c("Open","High","Low","Close","Dividends")