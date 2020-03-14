class MP3Importer

  attr_accessor :path  

  def initialize(path)
    @path = path
  end

  def files(file_name)
    @files ||= Dir.glob("#{path}/*.mp3").collect do |file_name| 
      file_name.gsub("#{path}/", "")
    end
  end
  
end