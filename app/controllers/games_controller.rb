class GamesController < ApplicationController

  def new
  end
  
  def create
    @game = Game.create(:t1_id => session[:team_id], :t2_id => params[:t2_id])
    redirect_to @game
  end
  
  def show
    @game = Game.find(params[:id])
    
  end

end
