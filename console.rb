require_relative('models/casting.rb')
require_relative('models/movie.rb')
require_relative('models/star.rb')

require ('pry-byebug')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

star1 = Star.new({ 'first_name' => 'Julia', 'last_name' => 'Roberts'} )
star1.save
star2 = Star.new({ 'first_name' => 'Ben', 'last_name' => 'Stiller' })
star2.save
star3 = Star.new({ 'first_name' => 'Jack', 'last_name' => 'Nicholson' })
star3.save

movie1 = Movie.new({ 'title' => 'Batman Returns', 'genre' => 'Action', 'budget' => 100 })
movie1.save
movie2 = Movie.new({ 'title' => 'Meet the Fockers', 'genre' => 'Comedy', 'budget' => 150 })
movie2.save
movie3 = Movie.new({ 'title' => 'Pretty Womamn', 'genre' => 'Romantic Comedy', 'budget' => 200})
movie3.save

casting1 = Casting.new({ 'star_id' => star1.id, 'movie_id' => movie3.id, 'fee' => 10 })
casting1.save
casting2 = Casting.new({ 'star_id' => star2.id, 'movie_id' => movie2.id, 'fee' => 5 })
casting2.save
casting3 = Casting.new({ 'star_id' => star3.id, 'movie_id' => movie1.id, 'fee' => 20 })
casting3.save

Star.all()
Movie.all()
Casting.all()

binding.pry
nil
