## Test code for cachematrix functions

## test case: create some invertible matrices and call cachematrix

testMatrixCaching <- function(r = 10, c = 10 ) {
    
    m1 <- makeCacheMatrix( matrix(c(1,0,5,2,1,6,3,4,0),3,3) )
    m2 <- makeCacheMatrix( matrix(rnorm((r*c),mean=30,sd=15),nrow=r,ncol=c) )
    m3 <- makeCacheMatrix( matrix(rnorm((r*c),mean=30,sd=15),nrow=r,ncol=c) )
    

   print( "solving m1 the first time")
   print( cacheSolve( m1 ) )
  
    
#   print( "solving m2 the first time")
#   cacheSolve( m2 )
    
#   print( "solving m3 the first time")
#   cacheSolve( m3 )

   print( "solving m1 the second time")
   cacheSolve( m1 )
    
#   print( "solving m2 the second time")
#   cacheSolve( m2 )
    
#   print( "solving m3 the second time")
#   cacheSolve( m3 )
}