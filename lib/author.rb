require 'pry'

class Author 
  attr_accessor :name 
  
  def initialize (name)
    @name = name 
  end     #def 
  
  def posts 
    @posts = [ ]
  end     #def 
  
  #def add_post (new_post)
  # @posts << new_post
  #  new_post.author = self 
  #end     #def 
  
  def add_post(post)
    @posts << post
    post.author = self
   end  

end          #class 



