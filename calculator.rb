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

def adv_calc(num1, num2, start_choice)
  if start_choice == "s"
    solution = Math.sqrt(num1)
    puts solution
  elsif start_choice == "p"
    solution = num1 ** num2
    puts solution
  end
end

def calculator
  calc_prompt = "What calculator do you want to use? (B)asic | (A)dvanced | (Q)uit"
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
    start_choice = gets.chomp

    if start_choice == "s"
      puts "First number..."
      first_num = gets.to_i
      adv_calc(first_num,start_choice)
    elsif start_choice== "p"
      puts "First number..."
      first_num = gets.to_i

      puts "Second number..."
      second_num = gets.to_i

      adv_calc(first_num, second_num, start_choice)
    end
  end
end

loop do
  calculator

  continue_prompt = "Continue using the calculator? (Y)es | (N)o"
  puts "#{continue_prompt}"
  continue_choice = gets.chomp

  break if continue_choice == "n" || calc_choice == "q"
end
