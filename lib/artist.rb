Skip to content
 
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@briantobal 
1
0 27 briantobal/ruby-objects-has-many-lab-online-web-pt-031119
forked from learn-co-students/ruby-objects-has-many-lab-online-web-pt-031119
 Code  Pull requests 0  Projects 0  Insights  Settings
ruby-objects-has-many-lab-online-web-pt-031119/lib/artist.rb
@maxwellbenton maxwellbenton rebase from master, updated solution
89d9c9b on Mar 7
@MinesJA @maxwellbenton @SophieDeBenedetto @jmburges
32 lines (24 sloc)  402 Bytes
    
class Artist
  attr_accessor :name

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

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end
end
