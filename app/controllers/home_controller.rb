class HomeController < ApplicationController
  
  def information_write
    
  end
  
  def information_save
    @title = params[:title]
    @content = params[:content]
    @choice = params[:choice]
    
    new_post = Post.new
    new_post.title = @title
    new_post.content = @content
    new_post.choice = @choice
    new_post.save
  
    redirect_to '/information'
  end
  
  
  def information
    @every_post = Post.all
  end

  def success
  end

  def main
    unless user_signed_in?      
      redirect_to '/users/sign_in'    
    end 
  end
  
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    redirect_to '/information'
  
  end
  
  def destroy_comments
    @one_post = Comment.find(params[:post_id])
    @one_post.destroy
    redirect_to '/information'
  end
  
   def update_view
    @one_post = Post.find(params[:post_id])  
   end
  
  def update
    @one_post = Post.find(params[:post_id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.choice = params[:choice]
    @one_post.save
    
    redirect_to '/information'
  end

  
  def item_list
  end
  
  def basket 
  end
  
  def comment_create
   @comment = Comment.new(post_id: params[:post_id], content: params[:content])
   @comment.save
   redirect_to :back
  end
end
