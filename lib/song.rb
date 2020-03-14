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
  
  def self.new_by_file_name(file_name)
    artist, song = file_name.split(" - ")
    new_song = self.new(song)
  end
  
end