## Functions for caching the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
      	x <<- y
            m <<- NULL
      }
      get <- function() x
      setsolve <- function(solve) m <<- solve
      getsolve <- function() m
      list(set = set, get = get,
            setsolve = setsolve,
            getsolve = getsolve)
}


## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above.

cacheSolve <- function(x, ...) {      
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}

cacheSolve(makeCacheMatrix(matrix(c(2,3,1,4),nrow=2,ncol=2)))
a <- makeCacheMatrix(c(1,0,1,0))
a <- makeCacheMatrix(matrix(c(2,3,1,4),nrow=2,ncol=2))

cacheSolve(makeCacheMatrix(matrix(c(5,-7,2,-3),nrow=2,ncol=2)))
b <- makeCacheMatrix(matrix(c(5,-7,2,-3),nrow=2,ncol=2))
cacheSolve(b)


> a <- matrix(c(5,-7,2,-3),nrow=2,ncol=2)
> a
     [,1] [,2]
[1,]    5    2
[2,]   -7   -3
> b <- solve(a)
> b
     [,1] [,2]
[1,]    3    2
[2,]   -7   -5

