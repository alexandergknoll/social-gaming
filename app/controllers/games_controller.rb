class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @user = current_user
    @game = Game.find_by(id: params[:id])
    @tags = @game.tags
    @comments = @game.comments
    @comment = Comment.new
    @rating = Rating.find_or_create_by(user: @user, game: @game)

    if @user.owned_games.include?(@game)
      @owned_game = UserGame.find_by(user: current_user, game: @game)
    else
      @owned_game = UserGame.new
    end
  end
end
