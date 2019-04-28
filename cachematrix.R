## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL #intial value of inv(varible for inverse matrix) is 0
  set <- function(y){
    x <<- y #get value of x from other function
    inv<- NULL #inv is still 0
  }
  get <- function() x 
  setInvMatrix <- function() inv<<- solve(x) #inverse matrix is done by solve 
  
  getInvMatrix <- function() inv #getting the value of inverse matrix
  list(set=set, 
       get=get,
       setInvMatrix=setInvMatrix,
       getInvMatrix=getInvMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInvMatrix() #updating the value of inv
  if(!is.null(inv)){
    message("getting cached data") #if fuction for looking the present value of cache
    return(inv)
  }
  mat <- x$get() #if the cache is null
  inv <- solve(mat,...) #inversing the matrix & storing it in "inv"
  x$setInvMatrix(inv) #setting the presnt "inv" value 
  inv #returing the present "inv" value
}
