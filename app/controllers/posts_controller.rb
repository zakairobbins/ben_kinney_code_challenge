class PostsController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc)
    @user = current_user
  end

  def new
    @user = current_user
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
    @author = User.find(@post.user_id)
    @user = current_user
    @comments = @post.comments
    @comment = Comment.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :user_id)
  end
end
