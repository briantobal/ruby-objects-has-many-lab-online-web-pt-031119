require 'pry'

class Author 
  attr_accessor :name 
  
  def initialize (name)
    @name = name 
  end     #def 
  
  def posts 
    Post.all.select {|post| post.author=self} #we're getting all posts, and sorting by the author, which is why there's a self there 
  end     #def 
  
  def add_post (new_post)
    new_post.author = self 
  end     #def 
  

end          #class 



