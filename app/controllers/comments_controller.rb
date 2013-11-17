class CommentsController < ApplicationController
  
  def create
   
    
    @player = Player.find(params[:player_id])
    @comment = @player.comments.build comment_params

    @comment.author = "yoana"
    @comment.save

    redirect_to :controller => "players", :action => "index"
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
