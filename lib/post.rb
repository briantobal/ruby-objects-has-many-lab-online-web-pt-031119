class Post 
  attr_accessor :author 
  @@all = [ ]  #keeps track of all the posts for the post class
  
  def self.all #exposes the @@varialbe - is self because you'll call Post.call - can call from any class
    @@all 
  end     #def 
  
  def initialize(name)
    @name = name 
    @@all << self #adds new post to @@all - self is a post 
  end     #def 
  
  
end 