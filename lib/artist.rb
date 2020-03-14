class Artist
  
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
end