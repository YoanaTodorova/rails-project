class PlayersController < ApplicationController
  around_filter :catch_not_found

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
    @comments = @player.comments
  end

  private
  def new_player
    pl = Player.new
    pl.name = "Димитър Мусев"
    pl.position = "полузащитник"
    pl.content = ""
    pl.save
  end

  def catch_not_found
    yield
    rescue ActiveRecord::RecordNotFound
      redirect_to players_path
  end
end
