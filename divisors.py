# Finding all divisors of 200
number = 200
divisors = [i for i in range(1, number + 1) if number % i == 0]
divisors