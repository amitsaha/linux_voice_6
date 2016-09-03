spawn do
    puts("I am in second fiber")
end

puts("In main fiber")
sleep 1.second
