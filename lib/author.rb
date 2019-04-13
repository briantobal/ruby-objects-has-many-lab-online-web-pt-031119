require 'pry'

class Author 
  attr_accessor :name #creates a name reader / writer 
  
  def initialize (name)
    @name = name 
  end     #def  #you need to initialize the class w/ a name 
  
  def posts 
    Post.all.select {|post| post.author=self} 
    
  end     #def 
  
  def add_post (new_post)
    new_post.author = self #this post we're passing belongs to the instance author
  end     #def 

#  post_title  #A 
# => "My Great Blog Post"
  
  def add_post_by_title(post_title)  
    post = Post.new(post_title)
    post_title.author = self
    @@all << post 
            
        
        
   # def add_song_by_name(song_name)
   # song = Song.new(song_name)
   # song.artist = self 
   # @songs << song
   # end     #def     
        
        
  end     #def 
end          #class 