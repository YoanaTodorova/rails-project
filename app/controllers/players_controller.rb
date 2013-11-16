class PlayersController < ApplicationController
  Players = [
      {
        :id => "1",
        :name => "Ivan Viktorov",
        :description => "",
        :position => "izvyn igrishteto"
      },
      {
        :id => "2",
        :name => "other guy",
        :description => "",
        :position => "rezerva"
        }]

  def index
    @players = Players
  end

  def show
    if (@player = Players.select { |p| p[:id] == params[:id] }.first) == nil
      redirect_to players_path
    end
  end
end
