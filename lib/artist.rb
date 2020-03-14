class Artist
  
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song
    self.songs = Song.new
  end
  
end