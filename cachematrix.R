## The pair of functions is used to create a special object that stores a matrix 
##and cache's its inverse. 

##The first function makeCacheMatrix gives a list of functions
##1.set the value of the matrix 2.get the value of the matrix
##3.set the value of its inverse matrix 4.get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
   set<-function(y){
      x<<-y
      m<<-NULL
     }
     get<-function()x
     setinverse<-function(inverse)m<<-inverse
     getinverse<-function()m
     list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
   

}


## The second function cacheSolve is used to caculate the inverse matrix. If 
## teh inverse matrix has been calculated, the function retrieve the inverse from
##the cache and skip the caculation. Otherwise, it calculates the inverse
##and save it to the cache through the function list of makeCacheMatrix.

cacheSolve <- function(x, ...) {
    m<-x$getinverse()
   if(!is.null(m)){
   message("getting cached data")
    return(m)
      }
   else{data<-x$get()
      m<-solve(data)
      x$setinverse(m)
       m}
}




