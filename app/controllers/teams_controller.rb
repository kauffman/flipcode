class TeamsController < ApplicationController

  def new
  end

  def show
    render :text => "balls"
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
