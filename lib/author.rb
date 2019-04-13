require 'pry'

class Author 
  attr_accessor :name #creates a name reader / writer 
  
  def initialize (name)
    @name = name 
  end     #def  #you need to initialize the class w/ a name 
  
  def posts 
    Post.all.select {|post| post.author=self} 
    #we're getting all posts the @@all method in Post 
    #sorting by the author (.select) then iterating over the posts and grabbing author=self
    #which is why there's a self there 
  end     #def 
  
  def add_post (new_post)
    new_post.author = self #this post we're passing belongs to the instance author
  end     #def 

#  post_title  #A 
# => "My Great Blog Post"
  
  def add_post_by_title (post_title)  
    post_title.author = self    
    Post.new(post_title)        
        
  end     #def 
end          #class 