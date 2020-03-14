class Song

  attr_accessor :name, :artist
    
  @@all = []
    
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def songs
    @@all << self
  end
  
end