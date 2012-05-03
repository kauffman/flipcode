class FlipsController < ApplicationController

  before_filter :find_flip

  def show
  end

  def solve
    if @flip.solve(params[:solution])
      current_team.increment_turn
      if current_team.turn > current_team.players_count
        #game over
        current_game.set_winner(current_team) unless current_game.winning_team
      end
      redirect_to(current_team)
    else
      current_team.increment_turn_attempts
      redirect_to(flip_path(current_team.flip, {:solution => params[:solution]}))
    end
  end

  def find_flip
    @flip = Flip.find(params[:id])
  end
end
