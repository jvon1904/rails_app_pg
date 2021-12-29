class CommentsController < ApplicationController


  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    
    if @comment.save
      redirect_to @post, anchor: :back
    else 
      render plain: "ya done messed up bruthuh"
    end
  end

  def destroy
    
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post
  end

  private


  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
