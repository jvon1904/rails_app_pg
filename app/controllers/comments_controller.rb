class CommentsController < ApplicationController
  before_action :set_post, except: :show

  def new
    @comment = @post.comments.new
  end

  def show
    @comment = Comment.find(params[:id])
    @post = @comment.post
  end

  def create
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to @post
    else 
      render plain: "ya done messed up bruthuh"
    end
  end

  def destroy
  end

  private
  
  def set_post
    @post = Post.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
