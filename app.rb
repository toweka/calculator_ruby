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

def calculate_bmi_metric(height, weight)
  (weight / (height ** 2)).round(2)
end

def calculate_bmi_imperial(height, weight)
  ((weight / (height ** 2)) * 703).round(2)
end

def trip_time_calculator(distance, kph)
  (distance / kph).round(2)
end

def trip_cost_calculator(price_of_fuel, distance, mpg)
  (price_of_fuel * (distance / mpg)).round(2)
end


#Prompt for basic or advanced
  puts "what Calculator mode would you like to use?: (B)asic or (A)dvanced or (BMI)Body Mass Index or Journey (T)ime or Journey (C)ost"
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

    puts "The answer is #{basic(num1, num2, function)}"

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

    puts "The answer is #{advanced(num1, num2, function)}"

  elsif mode == "BMI"
    #BMI mode
    puts "Would you like to calculate in (I)mperial or (M)etric?: "
    bmi_mode = gets.chomp.upcase

    if bmi_mode == "M"
      #Prompt for height
      puts "What is your weight in Kilograms?: "
      weight = gets.chomp.to_i
      #Prompt for weight
      puts "what is your height in metres?: "
      height = gets.chomp.to_f

      puts "your BMI is #{calculate_bmi_metric(height, weight)}"

    elsif bmi_mode == "I"
      #Prompt for height
      puts "What is your weight in Pounds?: "
      weight = gets.chomp.to_f
      #Prompt for weight
      puts "what is your height in Inches?: "
      height = gets.chomp.to_f

      puts "your BMI is #{calculate_bmi_imperial(height, weight)}"
    end

  elsif mode == "T"
    #Prompt for distance
    puts "How far are you travelling in Kilometers?: "
    distance = gets.chomp.to_f

    #Prompt for kph
    puts "What is your avergae speed in kilometers per hour?: "
    kph = gets.chomp.to_f

    puts "Your trip will take #{trip_time_calculator(distance, kph)} hours"
  end

# mpg - ((speed - 60) * 2)
