#name:宋书宁
#studen id：2002070001
#e-mail：997864147@qq.com

#课堂练习
8.5:4.5
c(1,1:3,c(5,8),13)
vector("numeric",5)
vector("complex",5)
vector("logical",5)
vector("character",5)
vector("list",5)
numeric(5)
complex(5)
logical(5)
character(5)
seq.int(3,12)
seq.int(3,12,2)
seq.int(0.1,0.01,-0.01)
n <- 0
1:n
seq_len(n)
pp <- c("11","22","33","44","a","55")
for(i in seq_along(pp))print(pp[i])
length(1:5)
length(c(TRUE,FALSE,NA))
sn <- c("she","lead","he","apple")
length(sn)
nchar(sn)
pointcare <- c(1,0,0,0,2,0,2,0)
length(pointcare) <- 3
pointcare
length(pointcare) <- 8
pointcare
c(apple=1,banana=2,"kiwi"=3,4)
x <- 1:4
names(x) <- c("apple","banana","kiwi","")
x
names(x)
names(1:4)

x <- (1:5)^2
x
x[c(1,3,5)]
x[c(-2,-4)]
x[c(TRUE,FALSE,TRUE,FALSE,TRUE)]
names(x) <- c("one","four","nine","sixteen","twentyfive")
x[c("one","nine","twentyfive")]
x[c(1,-1)]
x[c(1,NA,5)]
x[c(TRUE,FALSE,NA,FALSE,TRUE)]
x[c(-2,NA)]
x[6]
x[1.9]
x[-1.9]
x[]
which(x>10)
which.max(x)
which.min(x)

1:5 + 1
1 + 1:5
1:5 + 1:15
1:5 + 1:7

rep(1:5,3)
rep(1:5,each=3)
rep(1:5,times = 1:5)
rep(1:5,length.out = 7)
rep.int(1:5,3)
rep_len(1:5,13)

(three_d_array <- array(
  1:24,
  dim = c(4,3,2),
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei"),
    c("un","deux")
  )
))

(a_matrix <- matrix(
  1:12,
  nrow = 4,
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )
))

#使用array函数创建矩阵
(two_d_array <- array(
  1:12,
  dim = c(4,3),
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )
))
class(two_d_array)

#创建矩阵
(a_matrix <- matrix(
  1:12,
  nrow = 4,
  byrow = TRUE,
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )
))
class(a_matrix)

dim(three_d_array)
dim(a_matrix)
nrow(a_matrix)
ncol(a_matrix)
length(three_d_array)
length(a_matrix)

dim(a_matrix) <- c(6,2)
a_matrix

identical(nrow(a_matrix),NROW(a_matrix))
identical(ncol(a_matrix),NCOL(a_matrix))
raaa <- c(0,1,3,6,7,2)
nrow(raaa)
NROW(raaa)
ncol(raaa)
NCOL(raaa)

(a_matrix <- matrix(
  1:12,
  nrow = 4,
  byrow = TRUE,
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )
))
#行列维度名
rownames(a_matrix)
colnames(a_matrix)
dimnames(a_matrix)
rownames(three_d_array)
colnames(three_d_array)
dimnames(three_d_array)
#索引数组
a_matrix[1,c("zwei","drei")]#第一行第二三列
a_matrix[1,]
a_matrix[,c("zwei","drei")]
#合并矩阵
(another_matrix <- matrix(
  seq.int(2,24,2),
  nrow = 4,
  dimnames = list(
    c("five","six","seven","eight"),
    c("vi","fu","se")
  )
))
c(a_matrix,another_matrix)

cbind(a_matrix,another_matrix)
rbind(a_matrix,another_matrix)
#数组运算
a_matrix + another_matrix
a_matrix * another_matrix
(another_matrix1 <- matrix(1:12,nrow = 2))
a_matrix + another_matrix1
t(a_matrix)
a_matrix%*%t(a_matrix)#内乘
1:3 %o% 4:6#外乘
outer(1:3,4:6)

(m <- matrix(c(1,0,1,5,-3,1,2,4,7),nrow = 3))
m^-1#错误
(inverse_of_m <- solve(m))#正确
m %*% inverse_of_m

#课堂作业
#question4-1  seq.int(0,1,0.25)
#question4-2  1、直接命名：c("name"=xxx)  2、用name(x)函数
#question4-3  正整数，副整数，逻辑值，字符
#question4-4  60
#question4-5  %*%

#practice4-1
x <- c(1:20)
triangle_number <- x*(x + 1)/2
names(triangle_number) <- letters[1:20]
triangle_number[c("a","e","i","o","u")]

#practice4-2
a <- c(11:1,0:11)
diag(a)
