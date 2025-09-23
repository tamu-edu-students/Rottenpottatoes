movies = [
  { title: "Iron Man", rating: "PG-13", release_date: "2008-05-02" },
  { title: "The Incredible Hulk", rating: "PG-13", release_date: "2008-06-13" },
  { title: "Thor", rating: "PG-13", release_date: "2011-05-06" },
  { title: "Captain America: The First Avenger", rating: "PG-13", release_date: "2011-07-22" },
  { title: "The Avengers", rating: "PG-13", release_date: "2012-05-04" },
  { title: "Guardians of the Galaxy", rating: "PG-13", release_date: "2014-08-01" },
  { title: "Avengers: Age of Ultron", rating: "PG-13", release_date: "2015-05-01" },
  { title: "Captain America: Civil War", rating: "PG-13", release_date: "2016-05-06" },
  { title: "Black Panther", rating: "PG-13", release_date: "2018-02-16" },
  { title: "Avengers: Infinity War", rating: "PG-13", release_date: "2018-04-27" },
  { title: "Avengers: Endgame", rating: "PG-13", release_date: "2019-04-26" },
  { title: "Spider-Man: No Way Home", rating: "PG-13", release_date: "2021-12-17" },
  { title: "The Dark Knight", rating: "PG-13", release_date: "2008-07-18" },
  { title: "Inception", rating: "PG-13", release_date: "2010-07-16" },
  { title: "Gladiator", rating: "R", release_date: "2000-05-05" }
]

movies.each do |m|
  Movie.find_or_create_by!(title: m[:title].strip) do |movie|
    movie.rating = m[:rating]
    movie.release_date = m[:release_date]
  end
end

puts "✅ Seeded #{Movie.count} movies (duplicates prevented)"
