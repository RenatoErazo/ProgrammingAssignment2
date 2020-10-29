## Programming Assignment 2
## This function creates a special "matrix" object that can cache its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { ## x as original matrix
  
  ## inv as inverse and set to NULL
  inv <- NULL
  
  ## Now list the getters and setters for matrix object 
  
  ## Method Set matrix
  
  set <- function(matrix){
            x <<- matrix  ## set matrix x property to variable matrix
            inv <<- NULL  ## set to null inverse property
          }
  
  ## Method get matrix
  get <-  function() 
            {
              x ## Return Matrix property
  }
  
  ## Method set inverse of the matrix
  
  setInverse <- function(inverse){
    
                  inv <<- inverse ## set inverse property
    
  }
  
  ## Method get inverse of the matrix
  
  getInverse <- function(){
              inv ## Return inverse property
  }
  
  
  ## Return methods list
  list(set = set,get = get, setInverse = setInverse, getInverse = getInverse)

  }
  


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  ## Return the inverse if its already set
  
  if(!is.null(m)){
    message("getting chached data")
    return(m)
  }
  
  
  ## Else get the matrix from object
  data <- x$get()
  
  ## Inverse the matrix 
  m <- solve(data)
  
  ## Set property inverse of the object
  x$setInverse(m)
  
  
  m  ##Return matrix
}
