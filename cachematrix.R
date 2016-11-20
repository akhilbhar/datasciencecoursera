## Put comments here that give an overall description of what your
## functions do

##this function creates a matrix and space for storing its inverse, it uses base package function solve to get inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list( get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}


## This function caches the inverse 

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("this is cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}

###Test
a=matrix(1:4,2,2)
c=makeCacheMatrix(a)
cacheSolve(c)




makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse<- function() m
    list( get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}