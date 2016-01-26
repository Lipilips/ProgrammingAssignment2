## Setting up the function called makeCacheMatrix which has a matrix in it
# set the value of the matrix
# get the value of the matrix
# set the value of the inverse
# get the inverse f the matrix

  makeCacheMatrix = function(x = matrix()) { 
    m = NULL                            
    set =function(y) {
      x <<- y
      m <<- NULL
    }
    get = function() x
    setmatrixinverse = function(solve) m <<- solve
    getmatrixinverse = function() m
    list(set = set, get = get,
         setmatrixinverse = setmatrixinverse,
         getmatrixinverse = getmatrixinverse)
  }


## This function computes the inverse of the special matrix returned by `makeCacheMatrix` abov
 #Function calculates the inverse of the matrix from cache if, the inverse has already been found.
#If inverse not calculated then calculates it from the matrix provided.
cacheSolve = function(x, ...) {
  m =x$getmatrixinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data =x$get()
  m =solve(data, ...)
  x$setmatrixinverse(m)
  m
}






