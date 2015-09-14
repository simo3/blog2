class PostsController < ApplicationController
  def index
    @posts = Post.all
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
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    @post.save
    redirect_to post_url(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    @post.save
    redirect_to posts_url(@post)
  end

  private
  def post_params
    params.require(:post).permit(
      :title,
      :content,
      :category)
  end
end
