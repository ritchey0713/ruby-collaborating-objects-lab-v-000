require 'pry'
class Song 
  
  attr_accessor :name, :artist  
  
  def initialize(name)
    @name = name 
  end 
  
  def artist=(name)
       self.artist = Artist.find_or_create_by_name(name)
     self.artist.add_song(self)
 end
  
  def self.new_by_filename(filename)
    user_file = filename.split(" - ")
    song = self.new(user_file[1])
    song.artist = Artist.find_or_create_by_name(user_file[0])
    song
    




  
  
   

  end
  
end 
