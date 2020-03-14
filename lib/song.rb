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
    @artist = Artist.find_or_create_by_name(artist)
  end
    
  def self.new_by_file_name(file_name)
    artist, song = file_name.split(" - ")
    newly_instantiated_song = self.new(song)
    newly_instantiated_song.artist_name = artist
    newly_instantiated_song
  end
  
end