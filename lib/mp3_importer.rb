class MP3Importer

  attr_accessor :path  

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect do |file_name| 
      file_name.gsub("#{path}/", "")
    end
  end
  
  def import
    files.each do |file_name|
      Song.new_by_file_name(file_name)
    artist.add_song(self)
    end
  end
    
end