class Flip < ActiveRecord::Base
  attr_accessible :name, :game_id
  belongs_to :game
  
  %w{input valid_output desc}.each do |meth|
    delegate meth, :to => :flip_task
  end
  
  def solve(code)
  end
  
  def flip_task
    @flip_task = name.constantize.new    
  end
  
end
