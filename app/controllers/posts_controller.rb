class PostsController < ApplicationController

  def index
    @posts = Post.all
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
