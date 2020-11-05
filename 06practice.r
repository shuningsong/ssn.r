#name:宋书宁
#student id:2002070001
#email:997864147@qq.com


#函数作为其他函数的参数
do.call(hypoternuse,list(x=3,y=4))
#创建三个数据框
dfr1 <- data.frame(x = 1:5,y = rt(5,1))
dfr2 <- data.frame(x = 6:10,y = rt(5,1,1))
dfr3 <- data.frame(x = 11:15,y = rbeta(5,1,1))
do.call(rbind,list(dfr1,dfr2,dfr3))

menage <- c(1,0,0,1,2,13,80)
mean(menage)
mean(c(1,0,0,1,2,13,80))#简化
#匿名传递
x_plus_y <- function(x,y)x+y
do.call(x_plus_y,list(1:5,5:1))
do.call(function(x,y)x+y,list(1:5,5:1))

#返回值为函数
emp_cun_dist_fn <- ecdf(rnorm(50))
is.function(emp_cun_dist_fn)

#变量的作用域
f <- function(x9){
  y9 <- 1
  g <- function(y9){
    (x9+y9)/2
  }
  g(x9)
}
f(sqrt(5))

f <- function(x8){
  y8 <- 1
  g(x8)
}
g <- function(y8){
  (x8+y8)/2
}
f(sqrt(5))

h <- function(x10){
  x10*y10
}
h(9)
y10 <- 19
h(9)

y11 <- 19
h2 <- function(x11){
  if(runif(1)>0.5)y11 <- 12
  x11*y11
}
replicate(10,h2(9))

#question6-1 全局变量
#question6-2 利用list2env函数
#question6-3 
#question6-4
#question6-5 1、把函数当成参数 2、与rbind函数合用拼接数据框或矩阵 3、匿名方式传递函数

#practic1
multiples_of_pi <- new.env()
multiples_of_pi[["two_pi"]] <- c(2*pi)
multiples_of_pi$three_pi <- c(3*pi)
assign(
  "four_pi",
  c(4*pi),
  multiples_of_pi
  )
multiples_of_pi[["two_pi"]]
multiples_of_pi$three_pi
get("four_pi",multiples_of_pi)
ls(envir = multiples_of_pi)
ls.str(envir = multiples_of_pi)

#practice2
parity <- function(x){
}   #不会使用if     
        
#practice3
function_11 <- function(n){
  list("arge" = args(n),"body" = body(n))
}
function_22 <- function(x,y)x+y
function_11(function_22)
do.call(function_11,list(function_22))
