class CommentsController < ApplicationController
  
  def create
   
    
    @player = Player.find(params[:player_id])
    @comment = @player.comments.build params[:comment]

    @comment.author = "yoana"
    @comment.save
    
    redirect_to :controller => "players", :action => "index"
  end
end
