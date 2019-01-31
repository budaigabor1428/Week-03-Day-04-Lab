require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')

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

movie1 = Movie.new({ 'title' => 'Batman Returns', 'genre' => 'Action' })
movie1.save
movie2 = Movie.new({ 'title' => 'Meet the Fockers', 'genre' => 'Comedy' })
movie2.save
movie3 = Movie.new({ 'title' => 'Pretty Womamn', 'genre' => 'Romantic Comedy' })
movie3.save

casting1 = Casting.new({ 'star_id' => star1.id, 'movie_id' => movie3.id, 'fee' => 100000 })
casting1.save
casting2 = Casting.new({ 'star_id' => star2.id, 'movie_id' => movie2.id, 'fee' => 50000 })
casting2.save
casting3 = Casting.new({ 'star_id' => star3.id, 'movie_id' => movie1.id, 'fee' => 200000 })
casting3.save

Star.all()
Movie.all()
Casting.all()

binding.pry
nil
