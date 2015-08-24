## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        solve <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        getinverse <- function(solve) m <<- solve
        list(solve = solve, 
           
             getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) { 
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
      
        m
        ## Return a matrix that is the inverse of 'x'
}
