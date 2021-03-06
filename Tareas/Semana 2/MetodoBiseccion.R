#Algoritmo de biseccion

f <- function (x){
  return (x*exp(x)- pi)
}

a <-0
b<-2
x<-0
E<-(b-a)
i <-0
error <- 1e-4
E>error

while(E > error){
  
  x<-(a+b)/2
  E<-E/2
  
  if (f(a)*f(x) < 0){
    b<-x
  }
    
  if (f(b)*f(x) < 0){
    a<-x
  }

  cat("x=",formatC(x,width=-10, format = "f")," E=",E,"\n")
  
  i <- i+1
}

cat("Total de iteraciones: ", i)

plot.function(f,0,2)
abline(h = 0, v = 0:2/2, lty = 3, col = "gray")
     