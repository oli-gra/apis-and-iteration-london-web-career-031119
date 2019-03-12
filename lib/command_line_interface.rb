def welcome
  # puts out a welcome message here!
  puts "Welcome to the ULTIMATE starwars character lookup"
end

def get_character_from_user
  puts ""
  print "Please enter a character name or 'exit': "
  gets.chomp
  # use gets to capture the user's input. This method should return that input, downcased.
end

def user_message(*msg)
  puts (msg)
  puts ""
end

def print_movie(film)
  print "Episode "
  print film["episode_id"]
  print ". "
  print film["title"]
  print " "
  puts film["release_date"][0...4]
end