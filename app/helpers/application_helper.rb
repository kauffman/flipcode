module ApplicationHelper

  def current_team
    @current_team ||= Team.find(session[:team_id])
  end
end
