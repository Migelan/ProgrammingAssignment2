## I typed the pair of functions to cache the inverse of a matrix.

## This function  creates a matrix to cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)

## Is the inverse of the previous matrix. If thre previous works the following as well

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
