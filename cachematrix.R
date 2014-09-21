## returns a inversed matrix

makeCacheMatrix <- function(x = matrix()) {
  #initialize variables
  inversed <- NULL
  
  #define set function
  set <- function(y) {
    x <<- y
    inversed <<- NULL
  }
  #define get function
  get <- function() x
  
  #define setinversed and getinversed
  setinversed <- function(i) inversed <<- i
  getinversed <- function() inversed
  list(set = set, get = get,
       setinversed = setinversed,
       getinversed = getinversed)
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  # if already inversed, return this object
  inversed <- x$getinversed()
  if(!is.null(inversed)) {
    message("getting cached data")
    return(m)
  }
  # copy data from parameter
  data <- x$get()
  
  #make cache
  m <- makeCacheMatrix(data, ...)
  x$setinversed(m)
  m
}
