
evenCount <- 0
oddCount <- 0
x <- c(3,4,9,1,6,2,6,7,3)
for (n in x){
  if( n %% 2 == 0){
    evenCount = evenCount + 1
  } else {
    oddCount = oddCount + 1
    
  }
}
cat("짝수의 개수 :", evenCount, "\n")
cat("홀수의 개수 :", oddCount, "\n")