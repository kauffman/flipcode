class GamesController < ApplicationController
    
  def show
    @game = Game.open
  end

end
