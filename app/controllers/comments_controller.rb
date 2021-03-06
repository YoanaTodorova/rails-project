class CommentsController < ApplicationController
  
  def create
    @player = Player.find params[:player_id]
    @player.comments.build(comment_params).save

    redirect_to player_path @player
  end

  def destroy
    @player = Player.find params[:player_id]
    @player.comments.find(params[:id]).destroy
    
    redirect_to player_path @player
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
