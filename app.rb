require_relative 'classes/book'
require_relative 'classes/music_album'
require_relative 'utils/create'
require_relative 'utils/List'

class App
  include Create
  include List
  attr_accessor :books, :music, :games, :genres, :labels, :authors

  def initialize
    @books = []
    @music = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end

  def actions(option)
    methods = [method(:create_book), method(:create_music_album), 'Music added', 'Game added', method(:list_books),
               'All music albums',
               method(:list_music_albums), 'All games',
               'All genres', method(:list_labels), 'All authors']
    if (1..10).include?(option)
      methods[option - 1].call
    else
      puts 'Choose a number between 1 and 10'
    end
  end
end
