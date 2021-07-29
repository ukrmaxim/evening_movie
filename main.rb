require_relative 'lib/film'
require_relative 'lib/film_collection'

film_collection = FilmCollection.from_url

directors = film_collection.uniq_directors

puts 'Приветствуем тебя, киноман. Давай подберем фильм на вечер.'
puts

directors.each_with_index { |director, index| puts "#{index + 1}. #{director}" }

puts
print 'Фильм какого режиссера хочешь посмотреть? '

until (1..directors.size).include?(user_input = gets.to_i)
  print 'Выбери режиссера и нажми Enter: '
end

choice_director_films = film_collection.select_films(directors[user_input - 1])

puts
puts "Советуем посмотреть: #{choice_director_films.sample}"
