## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#the function first creates a matrix and then set and get the value of its inverse

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setinverse<-function(solve) m<<- solve
  getinverse<-function () m
  list(set=set, get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}

## Write a short comment describing this function

#the function first check if the inverse has been calculated and calculates the inverse
#only if the casche doesn't contain the calculation

cacheSolve <- function(x, ...) {
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setinverse(m)
  m
}

