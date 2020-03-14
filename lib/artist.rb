class Artist
  
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
   def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    artist = self.new
    artist.save
    artist
  end
  
  def self.new_by_name(name)
    artist = self.new
    artist.name = name
    artist
  end
  
  def self.create_by_name(name)
    artist = self.create
    artist.name = name
    artist
  end
  
  def self.find_by_name(name)
    @@all.find.each do |artist|
      artist.name == name
    end
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
end