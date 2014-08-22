
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
