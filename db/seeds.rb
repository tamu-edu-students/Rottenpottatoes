# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Movie.create([
  {title: "Inception", rating: "PG-13", description: "Dream heist.", release_date: "2010-07-16"},
  {title: "The Matrix", rating: "R", description: "Virtual reality.", release_date: "1999-03-31"},
  {title: "Finding Nemo", rating: "G", description: "Fish adventure.", release_date: "2003-05-30"},
  {title: "Interstellar", rating: "PG-13", description: "Space exploration.", release_date: "2014-11-07"},
  {title: "The Godfather", rating: "R", description: "Crime family saga.", release_date: "1972-03-24"},
  {title: "The Lion King", rating: "G", description: "Lion cub's journey.", release_date: "1994-06-24"}
])
