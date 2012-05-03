class TeamsController < ApplicationController
  
  def new
  end

  def show
    # Should technically be params and not session, but you
    # can only really look at your own team anyway.
    @current_team = Team.find(session[:team_id])
    @current_game = current_team.game
  end

  def create
    @current_team = Team.create(params[:team])
    if current_team.errors.empty?
      session[:team_id] = current_team.id
    end
    flash[:notice] = "YES."
    redirect_to current_team
  end

end
