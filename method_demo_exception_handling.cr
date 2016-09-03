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
  begin
    number = number.to_f
  rescue ex : ArgumentError
    puts("Error converting number to floating point number: #{ex.message}")
    exit(1)
  else
    if p
      begin
        p = p.to_i
      rescue ex : ArgumentError
        puts("Error converting power to integer: #{ex.message}")
        exit(1)
      else 
        result = power(number, p)
      end
    else
      result = power(number)
    end
  puts("\nResult: #{result}")
  end
end
