class RatingsController < ApplicationController
  def create
    # @comment = Comment.new(comment_params)
    # @comment.update(user: current_user, game_id: game_params[:game_id])
  end

  def update
    #RATINGS NEED TO CHANGE THEIR VALUE TO SOMETHING LIKE SCORE 
    puts rating_params[:value]
    
    rating = Rating.find_by(user: current_user, game_id: game_params[:game_id])
    puts rating
    rating.update(rating_params[:value])
    redirect_to rating.game
  end

  private

  def rating_params
    params.require(:rating).permit(:value)
  end

  def game_params
    params.permit(:game_id)
  end
end
