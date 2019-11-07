#Following function does following 4 things:

#set the value of the matrix
#get the value of the matrix
#set the value of the inverse
#get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  
  # temp inverse variable
  temp <- NULL
  
  #function to set the matrix
  set <- function(a) {
    x <<- a
    temp <<- NULL
  }
  
  #To get the matrix
  get <- function(){
   x
  }
  
  # set the inverse
  setInverse <- function(inverse){
    inv <<- inverse
  }
  
  # get the inverse
  getInverse <- function(){
    inv
  }
  
  # returning all the 4 methods created above
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


#This function calculates the inverse of a given matrix. If inverse is already calcualted
# then it should fetch the already calculated inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  
  # check if inverse if already there then return it
  if (!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  
  # getting  the matrix
  mat <- x$get()
  
  # calculate the inverse with all default parameters
  inv <- solve(mat, ...)
  
  # now set the inverse to the object created as "inverse"
  x$setInverse(inverse)
  
  # now return the inverse
  inverse
}
