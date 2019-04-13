require 'pry'

class Author 
  attr_accessor :name 
  
  def initialize (name)
    @name = name 
  end     #def 
  
  def posts 
    @posts = [ ]
  end     #def 
  
  def add_post (new_post)
    new_post.author = self 
  end     #def 
  

end          #class 



