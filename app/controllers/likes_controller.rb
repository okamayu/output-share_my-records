class LikesController < ApplicationController
  before_action :set_post, only: [:create, :destroy]

  def create
    @likes = Like.new(
      user_id: current_user.id, 
      post_id: @post.id
    )
    @likes.save
  end

  def destroy
    @likes = Like.find_by(
      user_id: current_user.id, 
      post_id: @post.id
    )
    @likes.destroy
  end


  private
  
  def set_post
    @post = Post.find(params[:post_id])
  end
end
