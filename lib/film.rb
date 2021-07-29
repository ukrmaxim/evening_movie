class Film
  attr_reader :title, :director, :year

  def initialize(title, director, year = '2021')
    @title = title
    @director = director
    @year = year
  end

  def to_s
    "#{director} - #{title} (#{year})"
  end
end
