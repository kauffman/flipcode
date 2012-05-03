module ApplicationHelper

  def current_team
    @current_team ||= Team.find(session[:team_id])
  end
  
  def current_game
    current_team.game
  end
  
  def display_output(output)
    output.is_a?(String) ? output : output.pretty_print_inspect
  end
  
end
