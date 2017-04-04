class CommentsController < ApplicationController

  def index
    @comments = Post.all
    @user = current_user
  end

  def show

  end

  def new
    p params
    @user = current_user
    @post_id = params[:post_id]
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    @post = Post.find(params[:post_id])
    redirect_to @post
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :user_id, :post_id)
  end
end
