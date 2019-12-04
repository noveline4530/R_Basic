setwd("~/R_test/Data/ch_07")
data <- read.table("ch7_2_1_student.txt", header = TRUE, stringsAsFactors = FALSE)

data1 <- data[ ,-1]
data2 <- t(data1)

#그룹단위 막대그래프 그리기
barplot(data2, names.arg = data$name, ylim = c(0,350),
        ylab = "정수", border="cyan", col = c(2,3,4), beside = F)

legend("topright",c("국어", "영어", "수학"), cex=0.7, bty = "n", fill=c(2,3,4), horiz = T)
