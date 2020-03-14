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
  
  def new_by_filename(file_name)
    Song.new(file_name) = song
  end
  
end