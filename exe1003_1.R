kor <- c(61, 78, 95, 80, 72)
eng <- c(81,87,90,70,82)

plot(kor, type="o", pch=1)

points(eng, type="b", pch=2, lty = 2, lwd = 2)
grid()
txt = c("kor", "eng")
legend("topright", txt, pch = 1:2, bty = "n")