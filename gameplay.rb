## Main Game 

require_relative 'question'
require_relative 'player1'
require_relative 'player2'

while true

  choose = Choose.new
  player1 = Player1.new
  player2 = Player2.new



  # Collect two numbers and 
  puts " "
  puts "---Player2--- pick some numbers:"
  puts " "
  puts choose.one
  num1 = gets.chomp().to_f
  puts choose.two
  num2 = gets.chomp().to_f

  # Pose question to other player
  puts " "
  puts "---Player1--- your turn to answer:"
  puts " "
  puts "What is #{num1} plus #{num2}"
  answer = gets.chomp().to_f

  # Collect answer
  if (answer === num1 + num2) 
    puts "-Correct!-"
  end

  if (answer != num2 + num2)
    puts "-Wrong!-"
    player1.minus
  end

# Output score or winner if there is one
  puts " "
  puts "--------------------------------"                    
  puts "           | SCORE  | "
  puts " "
  puts "Player1: #{player1.score} vs. Player2: #{player2.score}"
  puts " "
  puts "---------------------------------"
  puts " "

  if (player1.score < 1)
    puts "Player2 Wins!"
    return false
  end


#   ### Same process will repeat below but it poses a question to Player2

# Collect two numbers and 
puts " "
puts "---Player2--- pick some numbers:"
puts " "
puts choose.one
num1 = gets.chomp().to_f
puts choose.two
num2 = gets.chomp().to_f

# Pose question to other player
puts " "
puts "---Player1--- your turn to answer:"
puts " "
puts "What is #{num1} plus #{num2}"
answer = gets.chomp().to_f

# Collect answer
if (answer === num1 + num2) 
  puts "-Correct!-"
end

if (answer != num2 + num2)
  puts "-Wrong!-"
  player2.minus
end

# Output score or winner if there is one
puts " "
puts "--------------------------------"                    
puts "           | SCORE  | "
puts " "
puts "Player1: #{player1.score} vs. Player2: #{player2.score}"
puts " "
puts "---------------------------------"
puts " "

if (player2.score < 1)
  puts "Player1 Wins!"
  return false
end

end


puts "End of Game"





