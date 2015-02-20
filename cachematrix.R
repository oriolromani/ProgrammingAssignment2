

## The function makeMatrix creates a list of four functions:
## - set: sets the value of the matrix
## - get: gets the value of the matrix
## - setmatrix: sets the inverse of the matrix
## - getmatrix: gets the inverse of the matrix

makeMatrix <- function(x = matrix()) {
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
}

## The function cacheSolve actually inverts the matrix. 
## If the matrix is already cached, a message is shown and the cached matrix is returned.
## If not, it sets the invert of the matrix with the proper function from makeMatrix

cacheSolve <- function(x=matrix()) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix)
  x$setmatrix(m)
  m
}
