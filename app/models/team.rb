class Team < ActiveRecord::Base
  attr_accessible :name, :players_count, :turn, :game_id

  belongs_to :game

  before_save  :set_future_opponent
  after_create :set_up_game

  def to_s
    name
  end

  def opponent
    game.teams.select {|t| t != self }.first if game
  end



  def set_future_opponent
    @future_opponent = Team.waiting
  end

  def set_up_game
    if @future_opponent
      update_attributes(:players_count => @future_opponent.players_count)
      @future_opponent.game = self.create_game
      @future_opponent.save
    end
  end

  def self.waiting
    find_by_game_id(nil)
  end

end
