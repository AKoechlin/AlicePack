#' Alice Function
#'
#' @param a should be one real number
#' @param b a real number
#' @param c a real number
#' @param X a vector of real numbers (same length as Y and Z)
#' @param Y a vector of real numbers (same length as X and Z)
#' @param Z a vector of real numbers (same length as X and Y)
#' @return This function returns the values computed by the function, and a graph of the polynomous function if 3 values or more are provided for X, Y and Z vectors
#' @export
#'
#' @examples
#' 
alice_function <- function(a = 1, b = 0, c = 4, X = 1:12, Y = 42, Z = 21:30){
      if(length(X) != length(Y) | length(X) != length(Z) | length(Y) != length(Z)){
        print("Warning: X, Y and Z should habe the same length")
      }
    to_return <- a*X + b*Y**2 + c*Z**3
    if(length(X) > 2 | length(Y) > 2 | length(Z) > 2){
      plot(y = to_return, x = X, type = "b", ylab = "aX + bY^2 + cZ^3", xlab = "", las = 1, col = "purple")
    }
    return(to_return)
}
