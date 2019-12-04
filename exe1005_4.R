id <- c( "1", "2", "3", "4")
name <- c("정우성", "김철수", "송중기", "김영희")
kor <- c(80,60,90,70)
eng <- c(70,50,100,80)
mat <- c(95,70,95,80)
score1 <- data.frame(학번=id, 이름=name, 국어=kor, 영어=eng, 수학=mat)

avgValue <- apply( score1[ ,c(3:5)], 1, mean)
print(avgValue)

finalGrade <- c()
for (n in avgValue){
  if (n>=90){
    Grade <- "A"
  } else if (n>=80){
    Grade <- "B"
  } else if (n>=70){
    Grade <- "C"
  } else if (n>=60){
    Grade <- "D"
  } else {
    Grade <- "F"
  }
  
  finalGrade <- c(finalGrade, Grade)
}
print(finalGrade)

score2 <- cbind(score1, 평균 = avgValue, 등급 = finalGrade)
print(score2)