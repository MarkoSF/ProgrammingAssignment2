## Functions to calculate a matrix inverse and cache those values

## This function creastes a special "matrix" object that can cache its inverse.
## Returns a list of functions to set, get, setinverse, getinverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse )
}


## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        print("getting cached data")
        return(i)
    }
    print("couldn't get cache")
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    
    ## Return a matrix that is the inverse of 'x' 
    i
}
