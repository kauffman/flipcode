module ApplicationHelper

  def current_team
    @current_team ||= Team.find(session[:team_id])
  end
  
  def current_game
    current_team.game
  end
  
  def display_output(output)
    if output.is_a?(String) || output.nil?
      output
    else
      output.pretty_print_inspect
    end
  end
  
end
