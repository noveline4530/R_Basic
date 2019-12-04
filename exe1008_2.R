txt <- "Text-Analytics is useful.\n Text-Analytics is also interesting. \n"
# \n 제거하기
txt1 <- gsub("\n", "", txt)
print(txt1)
# -를 제거하고 공백으로 대체하기
txt2 <- gsub("-", "", txt1)
print(txt2)

#소문자, 대문자로 바꾸기
small_txt <- tolower(txt)
print(small_txt)
capital_txt <- toupper(txt)
print(capital_txt)

grade <- c("B", "C", "C", "B", "A", "C", "C")
#문자열의 빈도수 계산
freq_grade <- table(grade); print(freq_grade)