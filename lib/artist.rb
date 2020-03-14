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
  
  def self.find(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def self.find_or_create_by_name(name)
    if !(self.find(name))
      self.new(name)
    else
      self.find(name)
    end
  end
  
  def print_songs(artist)
    songs.each do |artist|
      puts 
  end
  
end