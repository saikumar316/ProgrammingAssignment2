makeCacheMatrix <- function(x = matrix())
{   
	m <- NULL  ## Initially set to NULL  
set <- function(y)	## Sets the matrix itself but not the inverse 
{                
x <<- y                
m <<- NULL       
}        
get <- function() x

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
