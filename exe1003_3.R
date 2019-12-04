setwd("~/R_test/Data/ch_07")
kor <- scan("ch7_1_kor.txt")
boxplot(kor, main = "국어 점수의 분포", ylab = "점수", col = 5)
print(max(kor)) ; print(min(kor)); print(median(kor))
