library(primes)
library(numbers)

initialize = function(p, q, seed=1){
  set.seed(seed)
  n = p * q 
  phi = (p-1)*(q-1)
  e = sample(generate_primes(1, phi), 1)
  if(gcd(e, phi)==1){
    print(c(n, phi, e))
  }
}

encrypt = function(x, n, e){
  y = (x^e) %% n
  print(y)
}

decrypt = function(y, e, n, phi){
  d = modinv(e, phi)
  x = (y^d) %% n
  print(x)
}
