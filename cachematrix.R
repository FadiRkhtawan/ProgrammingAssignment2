## creating an object that will have a matrix and will cache the inverse of it

## Write a short comment describing this function:
## creating a matrix and getting its value. 
## In addition, setting and getting the inverse's value.

makeCacheMatrix <- function(x = matrix()) {

    s <- NULL
     set <- function(y){
      x <<- y
     s <<- NULL
    
}
     get <- function()x
     setInverse <- function(inverse) s <<- inverse
     getInverse <- function() s 
     list(set = set, get = get, 
          setInverse = setInverse, 
          getInverse = getInverse)
}

## Write a short comment describing this function:
## the inverse of the matrix will be returned by makeCacheMatrix
## or will be retrieved from the cashe if it was already clculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  s <- x$getInverse()
  if(!is.null(s)){
    message("getting cached data")
    return(s)
  }
  mat <- x$get()
  s <- solve(mat,...)
  x$setInverse(s)
  s
  
}
