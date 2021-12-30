class CommentsController < ApplicationController
before_action :set_post, only: [:create, :edit, :update, :destroy]
  def create
        @comment = @post.comments.create(comment_params)
    
    if @comment.save
      redirect_to @post, anchor: :back
    else 
      render plain: "ya done messed up bruthuh"
    end
  end

  def edit 
    @comment = Comment.find(params[:id])
    
    render partial: 'form', locals: { comment: @comment } 
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to @post
    else
      render plain: "Ya done messed up boy!"
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post
  end



  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
