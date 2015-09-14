class PostsController < ApplicationController
  def index
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(
      :title,
      :content,
      :category)
  end
end
