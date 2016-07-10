classes <- c("integer","character","integer","character","character","character","character")
tran <- read.csv("J:/R/AML_3/Data/tran.csv",colClasses = classes)
tran$WITHDRAWAL <- as.numeric(tran$WITHDRAWAL)
tran$DEPOSIT <- as.numeric(tran$DEPOSIT)
tran$BALANCE <- as.numeric(tran$BALANCE)
tran[is.na(tran)] <- 0