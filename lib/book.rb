class Book
  attr_accessor :author, :page_count
  attr_reader :title          #not necessary to add :genre here as we have already created a setter (below) and by adding the genre to GENRES in the setter, we achieve exactly what we want.

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre)
    @genre = genre
    GENRES << genre
  end
  
end