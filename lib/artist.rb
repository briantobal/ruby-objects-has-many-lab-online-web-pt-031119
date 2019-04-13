
class Artist 
  attr_accessor :name 

  def initialize(name)
    @name = name 
    @songs = [ ]
    end     #def 

  def songs 
    @songs 
    end     #def 
    
  def add_song(song)
    @songs << song 
    song.artist = self 
    end     #def 

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self 
    @songs << song
    end     #def 
    
  def self.song_count 
    Song.all.count
  end     #def 

end #class 

#---- 

class Song 
  attr_accessor :artist, :name
  @@all = [ ]

  def initialize (name)
    @name = name 
    @@all << self 
  end     #def 
  
  def self.all 
    @@all 
  end     #def 
  

end #class 

