class CommentsController < ApplicationController


  def new
    @comment = set_post.comments.new
  end

  def create
    @comment = set_post.comments.new(comment_params)
    if @comment.save
      redirect_to set_post
    else 
      render plain: "ya done messed up bruthuh"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    @comment.destroy
    redirect_to @post
  end

  private
  
  def set_post
    @post = Post.find(params[:id])
  end


  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
