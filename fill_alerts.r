alerts <- data.frame(transactionId=numeric(0),amount=numeric(0),status=character(0))
alerts$status <- as.character(alerts$status)
k <- 1
for(i in 1:nrow(flag))
{
  acc <- flag[i,1]
  clust <- flag[i,2]
  temp.clust <- tran_cluster_list[[clust]]
  temp.flag <- subset(temp,ACC_ID==acc)
  for (n in 1:nrow(temp.flag))
  {
    alerts[k,1] <- temp.flag$TRAN_ID[n]
    alerts[k,2] <- temp.flag$BALANCE[n]
    alerts[k,3] <- "OPEN"
    k <- k+1
  }
}