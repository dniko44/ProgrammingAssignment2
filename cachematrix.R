## Cache the inverse of a matrix


makeCacheMatrix <- function(x = matrix()) {
        m <- null  ## setting mean to NULL 
        set <- function(y) {
        x <<- y
        m <<- Null
}
get <- function()x  ## returns the vector, x
        setmatrix <- function(solve) m<<- solve

        getmatrix <- function()m    ## gets the mean m
        
        list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
        }

CacheSolve <- function(x = matrix(),...) {
        m <- x$getmatrix()
        if (!is.null(m)) {
        message("getting cached data")
return(m)
}
        matrix <- x$get()
        m <- solve(matrix,...)
        x$setmatrix(m)
        m
}


