## Put comments here that give an overall description of what your
## functions do


## Caching the Inverse of a Matrix:
## The inversion of a matrix is most of the time a costly computation
## Therefore, the benefits to caching the inverse instead of computing it over and over 
## are obvious.
## The two functions are storing the matrix, as well as caching its inverse.


## Write a short comment describing this function
## The first function creates some kind of special object of a matrix, that 
## actually can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
        Invcac <- NULL
        set <- function(y) {
                x <<- y
                Invcac <<- NULL
        }
        get <- function() x
        Invset <- function(inverse) Invcac <<- inverse
        Invget <- function() Invcac
        list(set = set, get = get,
             Invset = Invset,
             Invget = Invget)
}


## Write a short comment describing this function
## The second function actually computes the inversce of the mentioned special matrix


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invFunc <- x$getInverse()
        if(!is.null(invFunc)) {
                message("getting cached data")
                return(invFunc)
        }
        data <- x$get()
        invFunc <- solve(data, ...)
        x$setInverse(invFunc)
        invFu
}
