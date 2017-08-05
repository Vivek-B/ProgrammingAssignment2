## Below are two functions that are used to create a special object that stores 
## a matrix and cache's its inverse.

## FIRST FUNCTION:-
## This function creates a special "matrix" object that can cache its inverse.
## It sets the value of the matrix
## Then gets the value of the matrix
## Then sets the inverse of the matrix
## Then gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
     x <<- y
     m <<- NULL
  }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m

}

## SECOND FUNCTION:-
## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
      message("getting cached data")
      return(m)
  }
         data <- x$get()
         m <- solve(mat.data, ...)
         x$setinverse(m)
         m
        ## Returns a matrix that is the inverse of 'x'
}


# Dummy changes