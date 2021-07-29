require 'open-uri'
require 'nokogiri'

class FilmCollection
  attr_reader :films

  URL = 'https://www.kinomania.ru/list/year/2021'.freeze

  def initialize(films = [])
    @films = films
  end

  def self.from_url
    doc = Nokogiri::HTML(URI.open(URL, &:read))

    films = doc.css('div.list-content-item-inner').map do |node|
      title = node.at('.name').text
      director = if node.at('.place a')
                   node.at('.place a').text
                 else
                   'Режиссер не указан'
                 end
      Film.new(title, director)
    end
    new(films)
  end

  def uniq_directors
    films.map(&:director).uniq
  end

  def select_films(selected_director)
    films.select { |film| film.director == selected_director }
  end
end
