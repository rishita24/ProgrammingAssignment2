##The code is used to generate a cached inverse of the matrix

## makeCacheMatrix creates a matrix, which is a list containing
## set the value of matrix,get the value of matrix,
## set the value of inverse,get the value of invers

makeCacheMatrix <- function(x = matrix()) {
        m1<-NULL
	set<-function(y){
	x<<-y
	m1<<-NULL
	}
	get<-function()x
	setinverse<-function(solve) m1<<-solve
	getinverse<-function()m1
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## this function is used to solve the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m1<-x$getinverse()
	if(!is.null(m1)){
	message("getting cached data")
	return(m1)
	}
	data<-x$get()
	m1<-solve(data,...)
	x$setinverse(m1)
	m1
}
