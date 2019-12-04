# Pole 단어가 포함된 문자열만 추출
str_including_pole <- grep("Pole", c("North Pole", "South Pole", "Equator"), value = TRUE)
print (str_including_pole)

# Pole 단어가 포함된 원소의 위치 변환
index_of_pole <- grep("Pole", c("North Pole", "South Pole", "Equator"), value = FALSE)
print(index_of_pole)

elec_code <- substr("LEDTV-48-B", 1, 5); print(elec_code)

#단어 단위로 분할하기 위해 "-"을 구분자(delimiter)로 지정
list_word <- strsplit("7-24-2017", split = "-"); print(list_word)

#unlist() 함수를 이용하여 리스트를 벡터로 변환
vec_word <- unlist(list_word); print(vec_word)

# 단어 단위로 분할하기 위해 "."을 구분자로 지정
word <- strsplit("2017.7.24", split = "."); print(word)
# "."을 구분자로 단위로 분할, fixed = TRUE 를 지정
word1 <- strsplit("2017.7.24", split = ".", fixed = TRUE); print(word1)
# "."을 구분자로 단위로 분할, "\\." 사용
word1 <- strsplit("2017.7.24", split = "\\."); print(word1)

# 년 월 일에 해당하는 문자열을 구분자를 공백으로 하여 하나의 문자열로 연결
pword1 <- paste("2017", "5", "30"); print(pword1)
# 년 월 일에 해당하는 문자열을 구분자를 "-"으로 하여 하나의 문자열로 연결
pword2 <- paste("2017", "5", "30", sep = "-"); print(pword2)

txt <- "Text Analytics is useful, Text Anaylytics is also interesting"
#txt 에서 처음 나타나는 Text를 Data로 대체하기(substitute)
new_txt1 <- sub("Text", "Data", txt); print(new_txt1)
#txt 에서 나타나는 모든 Text를 Data로 대체하기(substitute)
new_txt2 <- gsub("Text", "Data", txt); print(new_txt2)
