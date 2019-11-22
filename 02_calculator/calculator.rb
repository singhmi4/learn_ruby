#write your code here
def add(num1, num2)
    return num1 + num2
end 

def subtract(num1, num2)
    return num1 - num2
end 

def sum(arr)
  sum = 0
  arr.each do |num|
    sum = sum + num
  end

  return sum
  
end

def multiply(arr)
  total = 1
  arr.each do |num|
    total *= num
  end
  return total
end

def power(num,power)
  return num**power

end

def factorial(num)


  if num == 0
    return 1
  else
    return num * factorial(num -1)
  end
end