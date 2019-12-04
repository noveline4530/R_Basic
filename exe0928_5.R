setwd("~/R_test/exe0928")
practice1 <- data.frame()
practice1 <- edit(practice1)
print(practice1)
수학 = c(70,65,82,80)

practice1 <- cbind(practice1, 수학)
write.table(practice1, "ch6_practice1.xlsx", row.names = FALSE, col.names = TRUE)

install.packages("xlsx")
library(xlsx)