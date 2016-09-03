# Example of defining method including overloaded methods

def power(number)
    number**1
end

def power(number, p)
    number ** p
end

print("Enter a number to square: ")
number = gets()
print("Enter the power to raise it to: ")
p = gets()
if number
  if p
    p = p.to_i
    result = power(number.to_f, p)
  else
    result = power(number.to_f)
  end
  puts("\nResult: #{result}")
end
