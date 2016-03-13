## Put comments here that give an overall description of what your
## functions do
## For those functions, I aim to store previous inverse of the matrix(x) in cache for later computation.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
          x<<-y
          m<<-NULL
     ## set the value of matrix
     }
     get <- function() x  ## get the value of matrix
     setinverse <- function(solve)  m <<- solve
     ## set the inverse matrix
     getinverse <- function() m
     ## get the inverse matrix
     list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}

     
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
     m <- x$getinverse()
        ## Return a matrix that is the inverse of 'x'
     if(!is.null(m)) {
          message('getting cached inverse') 
          return (m)
          ##indicate there exists stored inverse matrix
     }  ##get the inverse matrix from the cache and skip the computation
     data <- x$get()
     m <- solve(data,...)
     x$setinverse(m)
     m
}
