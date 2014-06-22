## This functions saves the inverse of a matrix in the cache
## and retrieves it when necessary

## This functiom creates an object "mat" which stores the inverse
## of a matrix "x" in the cache.

makeCacheMatrix <- function(x = matrix()) {
        mat <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) mat <<- solve
        getinv <- function() mat
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
                
}

## This function returns the inverse of a matrix "x". If the
## inverse of "x" has already been calculated and stored 
## in the cache, the function returns the stored inverse of "x".

cacheSolve <- function(x, ...) {
        mat <- x$getinv()
        if(!is.null(mat)) {
                message("getting cached matrix")
                return(m)
        }
        data <- x$get()
        mat <- solve(data, ...)
        x$setinv(mat)
        mat
} 

