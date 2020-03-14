class Song

  attr_accessor :name, :artist, :filename, :artist_name
    
  @@all = []
    
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_file_name(file_name)
    artist, song = file_name.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
  
end