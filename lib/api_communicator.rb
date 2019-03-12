require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)
  user_message ("Searching...")
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)
  response_hash["results"].each do |character|
    if character["name"].downcase == character_name.downcase
      return character["films"]
    end
  end
  return charater = nil
end

def print_movies(films)
  user_message ("Getting films...")
  films.each do |film|
    response_film = RestClient.get(film)
    print_movie(JSON.parse(response_film))
  end
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  if films != nil
    print_movies(films) 
  else
    user_message("Character not found...")
  end
end