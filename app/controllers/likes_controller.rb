class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(blog_id: @blog.id)
    like.save
    
  end

  def unlike
    like = current_user.likes.find_by(blog_id: @blog.id)
    like.destroy
    
  end

  private
  
  def set_variables
    @blog = Blog.find(params[:blog_id])
    @id_name = "#like-link-#{@blog.id}"
    @id_heart = "#heart-#{@blog.id}"
  end
  
end
