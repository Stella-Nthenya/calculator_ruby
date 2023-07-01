def display_menu
  puts "These are the calculator options:"
  puts "1. Addition"
  puts "2. Subtraction"
  puts "3. Multiplication"
  puts "4. Division"
  puts "5. Exit - INPUT 5 TO QUIT"
end

def user_input
  print "What rithmetic operation do you want? (1-5): "
  gets.chomp.to_i
end

def get_numbers
  print "Enter the first number: "
  num1 = gets.chomp.to_i

  print "Enter the second number: "
  num2 = gets.chomp.to_i

  [num1, num2]
end

def perform_operation(choice, num1, num2)
  case choice
  when 1
    num1 + num2
  when 2
    num1 - num2
  when 3
    num1 * num2
  when 4
    if num2 != 0
      num1 / num2
    else
      "Error: Division by zero"
    end
  else
    "Error: Invalid choice"
  end
end

# Main program
loop do
  display_menu
  choice = user_input

  break if choice == 5

  if choice >= 1 && choice <= 4
    num1, num2 = get_numbers
    result = perform_operation(choice, num1, num2)
    puts "Result: #{result}"
  else
    puts "Invalid choice. Please try again."
  end

  puts "\n"
end
