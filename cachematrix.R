makeCacheMatrix <- function(x = matrix())
{   
	## Creating a makeCacheMatrix object will consist of
	## four functions encapsulated in a list 
    
m <- NULL  ## Initially set to NULL  
## Changes when the user sets the value    

set <- function(y)	## Sets the matrix itself but not the inverse 
{                
x <<- y                
m <<- NULL       
}        
get <- function() x ##get function ## Gets the matrix itself but not the inverse

setmatrix <- function(solve) m <<- solve        
getmatrix <- function() m
list(set = set, get = get,   
setmatrix = setmatrix,
getmatrix = getmatrix)
} 

cacheSolve <- function(x=matrix(), ...) ## Return a matrix that is the inverse of 'x'
{
        m <- x$getmatrix()
        if(!is.null(m)) 
	 {
                message("Calculating cached matrix inverse")
                return(m)
        }
        matrix <- x$get()
        x$setmatrix(m)
        m
}
