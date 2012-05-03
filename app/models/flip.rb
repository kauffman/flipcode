class Flip < ActiveRecord::Base
  attr_accessible :name, :game_id

  belongs_to :game

end
