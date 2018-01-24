# Get My Number Game
# Written by: James Blocker

puts "Welcome to 'Get My Number'"

# Greet player and get their name
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store random number for player to guess
puts " I have chosen a random number between 1-100"
puts "Can you guess it?!?"
target = rand(100) + 1
#Track number of guesses left
num_guesses = 0
guessed_it = false

#Track if user has guessed correctly
until num_guesses == 10 || guessed_it

    puts "You've got #{10 - num_guesses} guesses left"
    print "Make a guess "
    guess = gets.to_i

    num_guesses += 1

    #Compare guess to target
    #Print approopriate message
    if guess < target
        puts "Oops, your guess was too LOW"
    elsif guess > target
        puts "Oops, your guess was too HIGH"
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed it in #{num_guesses} guesses!"
        guessed_it = true
    end

end

#If player runs out of turns tell number
unless guessed_it
    puts "Sorry, you didn't guess the right number"
    puts "The number was #{target}."
end




