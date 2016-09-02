# Example of defining a method
def power(number)
    number**2
end

puts("Enter a number to square: ")
number = gets()
if number
    puts("Power of #{number} is #{power(number.to_f)}")
end
