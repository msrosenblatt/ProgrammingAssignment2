# Caching the Inverse of a Matrix
# First step is to create a special object to cache the matrix

#makeCacheMatrix <- function(x = matrix()) {
#
#Initialize the inverse property to NULL        
inv <- NULL
set <- function(y)  {
        x <<- y
        inv <<- NULL
}
#
#Method to get the matrix
#        
get <- function()  x
#        
#Set the inverse of the matrix
#        
setInverse <- function(inverse) inv <<- inverse
getInverse <- function () inv
#
#List the methods
#        
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)


# Grabs the matrix in cache and computes the inverse of the matrix

#Compute the inverse of the matrix
cacheSolve <- function(x, ...)  {
        inv <- x$getInverse()
#        
#If the inverse has already been calculated        
        if(!is.null(inv))  {
                #get it from the cache and skip the computation
                message("getting cached data")
                return(inv)
        }
#
#Otherwise compute the inverse of the matrix via matrix arithmetic
#        
mat <- x$get()
inv <- solve(mat, ...)
#
#Set the inverse with the setInverse function 
#        
x$setInverse(inv)
#Back to the matrix
inv
}
