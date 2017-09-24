## Put comments here that give an overall description of what your
## functions do

## Check if Matrix Inversion Results exist

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setInv<-function(solveInv) m<<-solveInv
  getInv<-function()m
  
  list(set=set,get=get,setInv=setInv,getInv=getInv)
}  
  


## Solve Matrix Inversion if results do not exist

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m<-x$getInv()
if(!is.null(m)){
  message("getting cached data")
  return(m)
}
  data<-x$get()
  m<-solve(data)
  x$setInv(m)
  return(m)
  }
