class Song

  attr_accessor :song, :artist
 
  def initialize(song_name)
    @song = song_name
    @artist = artist
    @songs = []
  end
  
  def songs
    @song << self
  end
  
end