#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  numbers.inject(0) {|total, n| total + n}
end

def multiply(*factors)
  factors.inject(1) {|product, n| product * n}
end

def power(a,b)
  a**b
end

def factorial(n)
  product = 1
  while n > 0 do
    product *= n
    n -= 1
  end
  product
end
