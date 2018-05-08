def basic_calc(num1, num2, start_choice)
  if start_choice == "d"
    solution = num1 / num2
    puts solution
  elsif start_choice == "m"
    solution = num1 * num2
    puts solution
  elsif start_choice == "a"
    solution = num1 + num2
    puts solution
  elsif start_choice == "s"
    solution = num1 - num2
    puts solution
  end
end

# def adv_calc(num1, num2, start_choice)
#   if start_choice ==
# end

calc_prompt = "What calculator do you want to use? (B)asic | (A)dvanced"
puts "#{calc_prompt}"
calc_choice = gets.chomp


if calc_choice == "b"
  start_prompt = "What do you want to do? (A)dd | (S)ubtract | (M)ultiply | (D)ivide"
  puts "#{start_prompt}"
  start_choice = gets.chomp

  puts "First number..."
  first_num = gets.to_i

  puts "Second number..."
  second_num = gets.to_i

  basic_calc(first_num, second_num, start_choice)
elsif calc_choice == "a"
  advance_prompt = "What would you like to do? (S)quareroot | (P)ower"
  puts "#{advance_prompt}"
end
