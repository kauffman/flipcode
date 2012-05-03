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

  def flip
    game.flip_for(turn)
  end

  def increment_turn_attempts
    self.turn_attempts += 1
    self.save
  end
  
  def increment_turn
    self.turn += 1
    self.turn_attempts = 0
    self.save
  end

  def set_future_opponent
    @future_opponent = Team.waiting
  end

  def set_up_game
    if @future_opponent
      update_attributes(:players_count => @future_opponent.players_count)
      new_game = Game.create
      @future_opponent.game = new_game
      @future_opponent.save
      self.game = new_game
      new_game.set_up_flips
    else
      self.game = Game.open
    end
    save
  end

  def self.waiting
    find_by_game_id(nil)
  end

end
