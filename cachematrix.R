## Put comments here that give an overall description of what your
## functions do
## These functions are used to canculate the invesrse of a matrix
## Write a short comment describing this function
## Step one: setting the value of the matrix



makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(matrix) {
    m <<- y
    i <<- NULL
  }

## Step two: getting the value of the matrix and its inverse 
  get <- function() {
    x
  }
  
## Step three: getting the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
    
  }
  
  getInverse <- function() {
    i
  }
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function
## This function computes the inverse of the special matrix above


cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'  
  m <- x$getInverse()
  
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
## Getting the matrix and calculating the inverse
  data <- x$get()
  m <- solve(data) %*% data
  x$setInverse(m)
  
## Retreiving the matrix
  m
  
      
}
