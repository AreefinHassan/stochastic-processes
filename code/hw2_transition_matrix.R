# Run this script from the repository root. 
getwd()
init <- c(0,0,0,0,1)
p <- matrix(c(0,0,0,0,1,0,8/13,3/13,1/13,1/13,1/16,3/16,3/8,1/4,1/8,0,1/11,4/11,5/11,1/11,0,1/8,1/2,1/8,1/4),nrow=5, byrow = T)
states <- c("80","135","139","445","No attack")
rownames(p)<- states
colnames(p)<- states
p

matrixpower <- function(mat,k) {
  if (k == 0) return (diag(dim(mat)[1])) 
  if (k == 1) return(mat)
  if (k > 1) return( mat %*% matrixpower(mat, k-1))
}

matrixpower(p,2)

init %*% matrixpower(p,2)
min(init %*% matrixpower(p,2))
max(init %*% matrixpower(p,2))

matrixpower(p,12)
matrixpower(p,13)

matrixpower(p,90)
round(matrixpower(p,90),3)
