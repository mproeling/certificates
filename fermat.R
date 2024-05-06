#n = 2059
#n = 46134521 
n = 1000322293 * 100031994757


a = ceiling(sqrt(n))
for(i in 1:10000000){
  b2 = a^2 - n 
  if(floor(sqrt(b2)) == sqrt(b2)){
    # perfect square
    b = sqrt(b2)
    x = a - b
    y = a + b
    print(paste(x, y, i))
    break
  } else {
    # next iteration
    a = a + 1
  }
}