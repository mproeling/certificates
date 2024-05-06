rm(list=ls(all=TRUE))
library(primes)
library(numbers)

primes = generate_primes(1000, 10000)

output = data.frame()
row.index = 0
for(i in 1:(length(primes)-1)){
  for (j in (i+1):length(primes)){
    p1 = primes[i]
    p2 = primes[j]
    #print(p1*p2)
    row.index = row.index + 1
    output[row.index, 1] = p1
    output[row.index, 2] = p2
    output[row.index, 3] = p1*p2
  }
}


