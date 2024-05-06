rm(list=ls(all=TRUE))
library(primes)
library(numbers)

# start met een n
n = 40 
# stel dat ik een priemgetal heb namelijk 5
p = 5
# dan is q natuurlijk 8
q = n / p 
q

# maar als n = 40 dan kan het ook zijn 4*10, 2*20, etc.
# dus van welk priemgetal is n een meervoud?
findDivisors <- function(n) {
  divisors <- c()  # Initialize an empty vector to store divisors
  # Iterate from 1 to sqrt(n) (inclusive)
  for (i in 1:floor(sqrt(n))) {
    if (n %% i == 0) {  # If i is a divisor
      divisors <- c(divisors, i)  # Add i to the list of divisors
      if (i != n / i) {  # Avoid adding the square root twice if n is a perfect square
        divisors <- c(divisors, n / i)  # Add the corresponding pair divisor
      }
    }
  }
  return(sort(divisors))  # Return the sorted list of divisors
}

# Example usage: Find divisors of 200
findDivisors(40)

# nu met priemgetallen
primes = generate_primes(1000,10000)
# bereken een N
n = 4973 * 9277
findDivisors(n)
