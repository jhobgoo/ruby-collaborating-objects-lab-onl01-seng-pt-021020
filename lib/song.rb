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
    Song.new(file_name) = self
  end
  
end