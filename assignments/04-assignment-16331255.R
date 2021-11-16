## question 1 ------------------------------------------------------------
l <- list(
  B = mapply(assign, letters, 1:26),
  A = array(1:60, c(5,2,3)),
  M = matrix(1:50, c(10,5))
)
## part 1 ----------------------------------------------------------------
str(l)
foo <- function(x){x[c(1,5,9,15,21)]}
vowels <- foo(l$B)
str(vowels)
consonants <- l$B[!(l$B %in% vowels)]
consonants
## part 2 ----------------------------------------------------------------
# Second columns in all dimensions from the array A
array <- l$A
array <- array[,-(1), ,drop=FALSE]
array

## part 3 ----------------------------------------------------------------
# Odd rows from the matrix M
odd_matrix <- l$M
odd <- seq(1,10,2)
odd_matrix <- odd_matrix[odd,]
odd_matrix


#Q2 ----------------------------------------------------------------
books <- c(
  "Dubliners",
  "Ulysses",
  "War and Peace",
  "Normal People",
  "Crime and Punishment",
  "The Picture of Dorian Gray"
)
characters <- nchar(books)
sum(characters > 10)
10/mean(characters)
4/6

# q3 ----------------------------------------------------------------
char_1 <- unlist(strsplit("kitten", split = ""))
char_2 <- unlist(strsplit("sitting", split = ""))

length(char_1)
length(char_2)
6-7
#we need to make them the same length
char_1_longer <- c(char_1, "g")
char_1_longer
# now we compare each letter
ifelse(char_1_longer == char_2, "SAME", "DIFFERENT")
#2 need changed + 1 we already added, we know the lv dist will be 3

sitting <- ifelse(char_1_longer == char_2, char_1_longer, char_2)
sitting

#q4 euclidean dist----------------------------------------------------------------
euclidean <- function(a, b) sqrt(sum((a - b)^2))
a <- c(3, 1, 5, 7, 1)
b <- c(4, 5, 2, 7, 1)
euclidean(a,b)

m <- c(12, 0, 15, 1, 2)
n <- c(0, 10, 1, 9, 6)
euclidean(m,n)

### question 5

fibonacci <- function(n) {
  a = 1
  b = 0
  while (n > 0) {
    swap = a
    a = a + b
    b = swap
    n = n - 1
  }
  b
}

fibonacci(10)
sapply(1:16, fibonacci)
##this is as close as i can get it to do what you want
