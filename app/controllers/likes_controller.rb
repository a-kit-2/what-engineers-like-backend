class LikesController < ApplicationController
  def create
    @already_like = Like.find_by(name: likes_params[:name])
    if @already_like
      @already_like.count += 1
      if @already_like.save
        render json: {add_count: true}
      else
        render json: {add_count: false}
      end
    else
      @new_like = Like.new(likes_params)
      if @new_like.save
        render json: {create_like: true}
      else
        render json: {create_like: false}
      end
    end
  end

  def show
    @likes = Like.all
    if @likes
      render json: {show_likes: true, likes: @likes}
    else
      render json: {show_likes: false, likes: @likes}
    end
  end

  private

  def likes_params
      params.require(:like).permit(:name, :count)
  end 
end
