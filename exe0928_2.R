setwd("~/R_test/exe0928")
#listValue <- scan("ch6_score_list.txt", what = list(name = character(), kor = numeric(), eng  = numeric(), mat =  = numeric()))
#cat("\nlistValue : \n "); print(table)

score1 <- read.table("ch6_score_list.txt", header = FALSE, stringsAsFactors = FALSE)
score2 <- read.table("ch6_score_space.txt", header = TRUE, stringsAsFactors = FALSE)
score3 <- read.table("ch6_score_comma.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)

print(score1)
print(score2)
print(score3)
kor = c(80,90,70)
write.table(kor, "kor2.txt", quote=FALSE , row.names = FALSE, col.names = FALSE)
