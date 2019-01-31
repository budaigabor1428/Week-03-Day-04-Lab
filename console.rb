require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')

require ('pry-byebug')

star1 = Star.new('Julia', 'Roberts')
star1.save
star2 = Star.new('Ben', 'Stiller')
star2.save
star3 = Star.new('Jack', 'Nicholson')
star3.save

movie1 = Movie.new('Batman Returns', 'Action')
movie1.save
movie2 = Movie.new('Meet the Fockers', 'Comedy')
movie2.save
movie3 = Movie.new('Pretty Womamn', 'Romantic Comedy')
movie3.save

casting1 = Casting.new({ 'star_id' => star1.id, 'movie_id' => movie3.id, 'fee' => 100000 })
casting1.save
casting2 = Casting.new({ 'star_id' => star2.id, 'movie_id' => movie2.id, 'fee' => 50000 })
casting2.save
casting3 = Casting.new({ 'star_id' => star3.id, 'movie_id' => movie1.id, 'fee' => 200000 })
casting3.save

binding.pry
nil
