library(readxl)
raw <- read_excel("PREC and INT.xlsx")
library(xts)
Sys.setenv(TZ = "UTC")
precint.xts <- xts(as.matrix(raw[,2:3]), raw[,1,drop = TRUE])

Monthlyprecint <- apply.monthly(precint.xts, colSums)

write.zoo(Monthlyprecint, file = "Monthly.csv")
