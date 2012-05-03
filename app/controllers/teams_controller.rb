class TeamsController < ApplicationController
  
  def new
  end

  def show
    # Should technically be params and not session, but you
    # can only really look at your own team anyway.
    @team = Team.find(session[:team_id])
    @game = Game.open
  end

  def create
    @team = Team.create(params[:team])
    if @team.errors.empty?
      session[:team_id] = @team.id
    end
    flash[:notice] = "YES."
    redirect_to @team
  end

end
