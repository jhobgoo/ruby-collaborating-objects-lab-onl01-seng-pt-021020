class Song

  attr_accessor :name, :artist
    
    @@all = []
    
  def initialize(song_name)
    @song = song_name
  end
  
  def songs
    @@all << self
  end
  
end