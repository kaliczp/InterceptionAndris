library(readxl)
raw <- read_excel("PREC and INT.xlsx")
library(xts)
precint.xts <- xts(as.matrix(raw[,2:3]), raw[,1,drop = TRUE])
