require 'pry'
class MP3Importer 
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
    
  end 
  
  def files
      @files ||= Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/","")} 
    
  end
  
  def import
    def import
    # binding.pry
    self.files.each do |file|
      song = Song.new_by_filename(file)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
end
    


  
  
  
  
  
  
  
  
  
end