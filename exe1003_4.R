setwd("~/R_test/Data/ch_07")
data <- read.table("ch7_2_1_student.txt", header = TRUE, stringsAsFactors = FALSE)
#막대그래프 그리기
#barplot(data$kor, main="국어 성적", ylim=c(0,100), xlab="이름", ylab="점수",
        names.arg=data$name, col=c(1,2,3,4,5,6))
barplot(data$eng, main="영어 성적", ylim=c(0,100), xlab="이름", ylab="점수",
names.arg=data$name, col=c(1,2,3,4,5,6))

        
