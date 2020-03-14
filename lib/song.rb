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
  
  def self.new_by_filename(file_name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  end
  
end