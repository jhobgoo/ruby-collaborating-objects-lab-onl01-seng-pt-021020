class Song

  attr_accessor :song, :artist
    
    @@all = []
    
  def initialize(song_name)
    @song = song_name
    @artist = artist
  end
  
  def songs
    @@all << @song
  end
  
end