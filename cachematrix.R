## The functions below cache the inverse of a matrix
## 

## here we are creating a function for a matrix object

makeCacheMatrix <- function(x = matrix()) {
  inverse <-NULL
  set <- function (x){
    matrix<<-x;
    inverse <<-NULL;
  }
  get <-function() return (matrix);
  setinv <- function (inv) inverse <<- inv;
  getinv <- function() return (inverse);
  return(list(set=set, get=get, setinv=setinv, getinv=getinv))
}


## here we are creating a function that computes the inverse of the matrix
## that is returned by the function makeCacheMatrix

cacheSolve <- function(matrix, ...) {
        inverse <-matrix$getinv()
        if(!is.null(inverse)){
          message ("Please wait.. Retrieving cached data")
          return(inverse)
        }
        date <- matrix$get()
        inverse<- solve(data, ...)
        matrix$setinv(inverse)
        return(inverse)
}
