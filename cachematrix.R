## In this assignment, I simply modify the codes in the example of
## Programming Assignment 2 to suit the requirements.

## This function creates a list containing a function to 1)set the
## value of the matrix, 2)get the value of the matrix, 3)set the
## inverse of the matrix, 4)get the inverse of the matrix. 

makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }
            get <- function() x
            setinverse <- function(solve) m <<- solve
            getinverse <- function() m
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)
}


## This function calculate the inverse of the matrix in above function.

cacheSolve <- function(x, ...) {
            m <- x$getinverse()
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            }
            data <- x$get()
            m <- solve(data, ...)
            x$setinverse(m)
            m        
}
