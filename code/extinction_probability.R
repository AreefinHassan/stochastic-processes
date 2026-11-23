


FUN_quad <- function(a, b, c) {
  pos_root <- (-b + sqrt((b ^ 2) - 4 * a * c)) / (2 * a)
  neg_root <- (-b - sqrt((b ^ 2) - 4 * a * c)) / (2 * a)
  print(pos_root); print(neg_root)
}
FUN_quad(1/4, -1/2, 1/4)




library("xts")
#library("roll")
library("ggplot2")
library("data.table")





p <- seq(from = .01, to = 1, by = .01)
data <- data.table(p = p,
                   p_e = (1 - p) ^ 2 / p ^ 2)
data$p_e[data$p_e > 1] <- 1
ggplot(data, aes(x = p, y = p_e)) +
  geom_point() +
  theme_bw() +
  xlab("p") + ylab("Extinction Probability") +
  ggtitle("Extinction Probability for Bin(2, p) offspring distribution")