class Api::V1::PostsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    respond_with posts: Post.all
  end

  def create
    render :json => {post: Post.create(post_params) }
  end

  def update
    post = Post.find(params[:id])
    unless post.nil?
      post.update_attributes post_params
      post.save
    end
    render :json => {post: post}
  end

  def show
    render :json => {post: Post.find(params[:id]) }
  end

  private
  def post_params
    params.require(:post).permit(:name, :desc, :full_description )
  end

end