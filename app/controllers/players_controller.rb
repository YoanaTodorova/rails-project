class PlayersController < ApplicationController
  around_filter :catch_not_found

  def index
    @players = Player.all
  end

  def show
    @player = Player.find params[:id]
    @comments = @player.comments
  end

  private
  def catch_not_found
    yield
    rescue ActiveRecord::RecordNotFound
      redirect_to players_path
  end
end
