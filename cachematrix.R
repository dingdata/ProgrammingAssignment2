## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix create a "special" matrix that cache its inverse.
## it contain a list of function to get and set value of a matrix and inversing it.
makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
        x <<- y
        m <<- NULL
      }
      
      get <- function() x
      setmatrix <- function(solve) m <<- solve
      getmatrix <- function() m
      #set list of functions
      list(set = set, get = get,
           setmatrix = setmatrix,
           getmatrix = getmatrix)
      
}


## Write a short comment describing this function


cacheSolve <- function(x = matrix(), ...) {
      
      ## cacheSolve get the input matrix
      m <- x$getmatrix()
      
      ##If the inverse has already been calculated (and the matrix has not changed), 
      ##then the cachesolve should retrieve the inverse from the cache.
      
      if(!is.null(m)) {
        message("getting cached data")
        return(m)
      }
      matrix <- x$get()
      m <- solve(matrix, ...)
      x$setmatrix(m)
      m
  
  ## Return a matrix that is the inverse of 'x'
  
}
g