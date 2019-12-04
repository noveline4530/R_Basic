setwd("~/R_test/exe0928")
score1 <- read.table("ch6_score_space.txt", header = TRUE, stringsAsFactors = FALSE)
print(score1)

## 각 학생 국,영,수 성적합계 및 평균
sumValue <- apply(score1[c(2:4)],1,sum)
avgValue <- apply(score1[c(2:4)],1,mean)
cat("sumValue : \n"); print(sumValue)
cat("avgValue : \n"); print(avgValue)

##
score2 <- cbind(score1, sum = sumValue, avg = avgValue)
print(score2)

write.table(score2, "score.txt", quote = FALSE, row.names = FALSE, col.names = TRUE)