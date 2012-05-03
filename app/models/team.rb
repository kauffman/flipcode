class Team < ActiveRecord::Base
  attr_accessible :name, :players_count

  has_one :game

  def to_s
    name
  end

  def opponent
    game.teams.select {|t| t != self }.first
  end

end
