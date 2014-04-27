## Functions to calculate a mean and cache those values

## This function creastes a special "vector" object that can cache its mean
## Returns a list of functions to set, get, setmean, getmean

makeVector <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
}

## This function computes the mean of the special "vector" returned 
## by makeVector above. If the mean has already been calculated 
## (and the vector has not changed), then the cachemean should retrieve 
## the mean from the cache

cachemean <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
}