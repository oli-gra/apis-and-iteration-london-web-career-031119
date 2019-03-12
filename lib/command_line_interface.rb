def welcome
  # puts out a welcome message here!
  puts "Welcome to the ULTIMATE starwars movie database"
end

def get_character_from_user
  print "Please enter a character name: "
  gets.chomp
  # use gets to capture the user's input. This method should return that input, downcased.
end

def user_message(msg)
  puts (msg)
  puts ""
end
