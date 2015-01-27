## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## takes matrix mx as an input and creates an object 
## with methods to set matrix, get matrix, set the inverse of matrix and get the inverse

makeCacheMatrix <- function(mx = numeric()) {
    im <- NULL
    setmat <- function(my) {
      mx <<- my
      im <<- NULL
    }
    getmat <- function() mx
    setmatInv <- function(inv) mx <<- inv
    getmatInv <- function () im
    list(setmat = setmat, getmat = getmat,
         setmatInv = setmatInv,
         getmatInv = getmatInv)
}



## Write a short comment describing this function

## gets the cached inverse of a matrix if it is cached
## otherwise creates the inverse and sets it

cacheSolve <- function(mx, ...){
  mm <- mx$getmatInv()
  if(!is.null(mm)){
    message("getting cached data")
    return(mm)
  }
  data <- mx$getmat()
  mm <- solve(data, ...)
  mx$setmatInv(mm)
  mm
}

