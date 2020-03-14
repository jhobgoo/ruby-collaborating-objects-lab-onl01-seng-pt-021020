class Artist
  
  attr_accessor :name

  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song
    self = Song.new
  
end