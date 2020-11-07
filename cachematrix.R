## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(samp = matrix()) {
	invsamp <- NULL
	set <- function(x) {
		samp <<- x
		invsamp <<- NULL
	}
	get <- function() samp
	setInverse <- function(inverse) inv <<- inverse
	getInverse <- function() invsamp
	list(set = set,
		 get = get,
		 setInverse = setInverse,
		 getInverse = getInverse)
}


cacheSolve <- function(samp, ...) {
	## Return a matrix that is the inverse of 'sample'
	inv <- samp$getInverse()
	if (!is.null(inv)) {
		message("getting cached data")
		return(invsamp)
	}
	mat <- samp$get()
	invsamp <- solve(mat, ...)
	sample$setInverse(invsample)
	invsample
}