class Song

  attr_accessor :name, :artist, :filename
    
  @@all = []
    
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    return artist.add_song(self)
  end
    
  def self.new_by_file_name(file_name)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
  
end