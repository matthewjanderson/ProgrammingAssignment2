## cachematrix.R - a pair of functions that cache the inverse of a matrix

## makeCacheMatrix - a function that creates a special matrix function that can cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {

	## First - initialise the inverse property
		i <- NULL
	## Then set and get matrix
    ## Method - set the matrix
		set <- function( matrix ) {
        m <<- matrix
		i <<- NULL
    }

	## Method - get the matrix
		get <- function() {
		## Return the matrix
		m
		}

	## then set and get inverse of matrix 	
	## Method - set the inverse of the matrix
			setInverse <- function(inverse) {
				i <<- inverse
		}

    ## Method - get the inverse of the matrix
		getInverse <- function() {
		## Return the inverse property
		i
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)


## cacheSolve - a function that computes the inverse of the special matrix returned by makeCacheMatrix function.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cacheSolve function should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}m <- x$getInverse()

    ## Return the inverse if it is already calculated
		if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
    ## Get the matrix
		data <- x$get()

    ## Calc the inverse using matrix multiplication
		m <- solve(data) %*% data

    ## Set the inverse to the object
		x$setInverse(m)

    ## Return the matrix
		m
}
