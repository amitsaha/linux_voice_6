mixed_arr = [1, 1.2, "Hello", nil]
puts typeof(mixed_arr)

mixed_arr = [] of Int32|String|Nil
mixed_arr << 1
mixed_arr << "Hii!"
puts typeof(mixed_arr)
