#Calculator
include Math

def basic(num1, num2, function)
  #Addition
  if function == "+"
    ans = num1 + num2
  elsif function == "-"
    #Subtraction
    ans = num1 - num2
  elsif function == "*"
    #Multiply
    ans = num1 * num2
  elsif function == "/"
    #Divide
    ans = num1 / num2
    #Return result
  end
  ans
end

def advanced(num1, num2, function)
  #Power
  if function == "P"
    ans = num1 ** num2
    #Square Root
  elsif function == "S"
    num2 = nil
    ans = Math.sqrt(num1)
  end
  #Return result
  ans
end


def calculate_bmi(height, weight)
  (weight / (height  ** 2))
end

#Prompt for basic or advanced
  puts "what Calculator mode would you like to use?: (B)asic or (A)dvanced or (BMI)Body Mass Index"
  mode = gets.chomp.upcase
  puts "You are using the #{mode} calculator"

  if mode == "B"
  #Basic Mode

    #Prompt for function
    puts "what function would you like to use?: + - * /"
    function = gets.chomp
    #Prompt for num1
    puts "what is your first number?: "
    num1 = gets.chomp.to_i
    #Prompt for num2
    puts "what is your second number?: "
    num2 = gets.chomp.to_i
    #Prompt for function

    puts basic(num1, num2, function)

  elsif mode == "A"
    #Advanced Mode

    #Prompt for function
    puts "what function would you like to use?: (P)ower or (S)quareroot"
    function = gets.chomp.upcase
    #Prompt for num1
    puts "what is your first number?: "
    num1 = gets.chomp.to_i
    #Prompt for num2
    puts "what is your second number?: "
    num2 = gets.chomp.to_i
    #Prompt for function

    puts advanced(num1, num2, function)

  elsif mode == "BMI"
    #BMI mode

    #Prompt for height
    puts "What is your weight in Kilograms?: "
    weight = gets.chomp.to_i
    #Prompt for weight
    puts "what is your height in metres?: "
    height = gets.chomp.to_f

    puts calculate_bmi(height, weight)
  end
