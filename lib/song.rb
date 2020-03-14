class Song

  attr_accessor :song_name, :artist
    
    @@all = []
    
  def initialize(song_name)
    @song_name = song_name
  end
  
  def songs
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end