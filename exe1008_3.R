setwd("~/R_test/Data/ch_09")
lyrics <- readLines("ch9_2_jingle_bells.txt")

#반복문을 간단하게 전처리 가능

#syNotUsed <- c(",", "\\.", "-")
#for(ch in symNotUsed){
# lyrics <- gsub(ch, "", lyrics)
#}

# 텍스트 각각 전처리하기
lyrics <- gsub(",", "", lyrics)
lyrics <- gsub("\\.", "", lyrics)
lyrics <- gsub("-",  " ", lyrics)

lyrics <- tolower(lyrics)
lyricsWord <- strsplit(lyrics, " ")
lyricsWordList <- unlist(lyricsWord)  # 벡터로 변환
#print(lyricsWordList)

lyricsCount <- table(lyricsWordList) #단어의 빈도수 계산
lyricsCount <- sort(lyricsCount, decreasing = TRUE) # 빈도가 큰 순서 정렬
lyricsCount <- lyricsCount[lyricsCount >= 2] # 빈도가 2이상인 단어 추출
#print(lyricsCount)

# 단어의 빈도수에 따른 가로막대 생성
barplot(lyricsCount, horiz = TRUE, las = 1, xlim = c(0,7),
        col = "green", main = "jingle bells")

# lyrics6에서 불용어를 삭제
lyricsWordListNotUsed <- removeWords(lyricsWordList, stopwords("en"))

#lyrics7에서 단어의 글자 수가 1이상인 단어 추출
lyricsWordListNotUsed <- lyricsWordListNotUsed[nchar(lyricsWordListNotUsed)>= 1]
lyricsCountNotUsed <- table(lyricsWordListNotUsed)
lyricsCountNotUsed <- sort(lyricsCountNotUsed, decreasing = TRUE)
lyricsCountNotUsed <- lyricsCountNotUsed[lyricsCountNotUsed >= 2]

barplot(lyricsCountNotUsed, horiz = TRUE, las =2 ,
        xlim = c(0,7), col = "mediumseagreen", main = "Jingle bells")
