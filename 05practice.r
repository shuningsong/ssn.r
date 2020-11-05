#name:宋书宁
#student id:2002070001
#email :997864147@qq.com

#创建列表
(a_list <- list(
  c(1,1,2,5,14,42),
  month.abb,
  matrix(c(3,-8,1,-3),nrow = 2),
  asin
))
names(a_list) <- c("catalan","months","involutary","arcsin")
a_list

(main_list <- list(
  middle_list = list(
    element_in_middle_list = diag(3),
    inner_list = list(
      element_in_inner_list = pi ^ (1:4),
      another_element_in_inner_list = "a"
    )
  ),
  element_in_main_list = log10(1:10)
))
#原子和递归变量
is.atomic(list())
is.recursive(list())
is.atomic(numeric())
is.recursive(numeric())
#列表的维度
length(a_list)
length(main_list)
dim(a_list)
nrow(a_list)
ncol(a_list)
NROW(a_list)
NCOL(a_list)
#列表算术运算
l1 <- list(1:5)
l2 <- list(6:10)
l1[[1]]+l2[[1]]
#索引列表
l <- list(
  first = 1,
  second = 2,
  third = list(
    alpha = 3.1,
    beta = 3.2
  )
)
l[1:2]
l[-3]
l[c(TRUE,TRUE,FALSE)]
l[[1]]
l[["first"]]
is.list(l[1])
is.list(l[[1]])
l$first
l$f
l[["third"]]["beta"]

l[["third"]][["beta"]]
l[[c("third","beta")]]
is.list(l[["third"]]["beta"])
is.list(l[["third"]][["beta"]])

l[c(4,2,5)]
l[c("fourth","second","fifth")]
l[["fourth"]]
l$fourth
l[[4]]
#向量列表转换
busy_beaver <- c(1,6,21,107)
as.list(busy_beaver)
as.numeric(list(1,6,21,107))
(prime_factors <- list(
  two = 2,
  three = 3,
  four = c(2,2),
  five = 5,
  six = c(2,3),
  seven = 7,
  eight = c(2,2,2),
  nine = c(3,3),
  ten = c(2,5)
))
new_factors <- unlist(prime_factors)
new_factors
new_factors[1]
new_factors[[1]]
is.list(prime_factors)
is.list(new_factors)
is.list(new_factors[1])
is.list(new_factors[[1]])
#组合列表
c(list(a=1,b=2),list(3))
c(list(a=1,b=2),3)
matrix_list_hybrid <- cbind(list(a=1,b=2),list(c=3,list(d=4)))
matrix_list_hybrid
str(matrix_list_hybrid)
#null
china_holiday <- list(
  jan = "new year's day",
  feb = "spring festival",
  mar = NULL,
  Apr = "qingming festival",
  may = "may day",
  jun = "dragon boat festival",
  jul = NULL,
  aug = NULL,
  sep = "moon festival",
  oct = "national day",
  nov = NULL,
  dec = NULL
  
)
china_holiday
length(NULL)
length(NA)
is.null(NULL)
is.null(NA)
is.na(NULL)
china_holiday$sep <- NULL
china_holiday
china_holiday$jun <- list(NULL)
china_holiday
#成对列表
(arguments_of_sd <- formals(sd))
class(arguments_of_sd)
pairlist()
list()
#创建数据框
(a_data_frame <- data.frame(
  x = letters[1:5],
  y = rnorm(5),
  z = runif(5)>0.5
))
class(a_data_frame)
y <- rnorm(5)
names(y) <- month.name[1:5]
data.frame(
  x = letters[1:5],
  y = y,
  z = runif(5)>0.5
  )

data.frame(
  x = letters[1:5],
  y = y,
  z = runif(5)>0.5,
  row.names = NULL
)
data.frame(
  x = letters[1:5],
  y = y,
  z = runif(5)>0.5,
  row.names = c("ja","ti","je","ma","mi")
)
rownames(a_data_frame)
colnames(a_data_frame)
dimnames
nrow(a_data_frame)
ncol(a_data_frame)
dim(a_data_frame)
length(a_data_frame)
names(a_data_frame)

data.frame(
  x = 1,#循环4次
  y = 2:3,
  z = 4:7
)
data.frame(
  x = 1,
  y = 2:3,
  z = 4:6
)
data.frame(
  "A column" = letters[1:5],
  "..." = rnorm(5),
  "..." =  runif(5)>0.5,
  check.names = TRUE
  )
data.frame(
  "A column" = letters[1:5],
  "..." = rnorm(5),
  "..." =  runif(5)>0.5,
  check.names = FALSE
)
#索引数据框
a_data_frame[2:3,-3]
a_data_frame[c(FALSE,TRUE,TRUE,FALSE,FALSE),c("x","y")]
a_data_frame[2:3,1]
class(a_data_frame[2:3,-3])
class(a_data_frame[2:3,1])
a_data_frame$x[2:3]
a_data_frame[[1]][2:3]
a_data_frame[["x"]][2:3]
a_data_frame[a_data_frame$y>0|a_data_frame$z,"x"]
subset(a_data_frame,y>0|z,x)
#基本数据框操作
t(a_data_frame)
class(t(a_data_frame))
another_data_frame <- data.frame(
  z = rlnorm(5),#对数分布的数
  y = sample(5),#1到5随机排列数
  x = letters[3:7]
)
rbind(a_data_frame,another_data_frame)
cbind(a_data_frame,another_data_frame)
merge(a_data_frame,another_data_frame,by = "x")
merge(a_data_frame,another_data_frame,by = "x",all = TRUE)
colSums(a_data_frame[,2:3])
colMeans(a_data_frame[,2:3])



#question5-1  3
#question5-2  使用formals时
#question5-3  1、给列加上条件a_data_frame[a_data_frame$y>0|a_data_frame$z,"x"]
            #2、用subset函数subset(a_data_frame,y>0|z,x)
            #3、用索引数据框来选择
#question5-4  给data.frame传入check.names = FALSE
#question5-5  用merge函数

#practice5-1
x <- c(1:10)
y <- c(x^2)
(a_list <- list(
  y[1:3],
  y[4],
  y[5],
  y[6],
  y[7],
  NULL,
  y[8],
  NULL,
  y[9]
))

#practice5-2
(iris_frame <- iris)
iris_frame
ncol(iris_frame)
colMeans(iris_frame[,1:4])

#practice 5-3
new_beaver1 <- data.frame(
  id = 1
)
new_beaver1
new_beaver11 <- cbind(new_beaver1,beaver1)

new_beaver2 <- data.frame(
  id = 2
)
new_beaver2
new_beaver22 <- cbind(new_beaver2,beaver2)
rbind(new_beaver11,new_beaver22)
