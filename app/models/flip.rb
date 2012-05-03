class Flip < ActiveRecord::Base
  attr_accessible :name, :game_id
  belongs_to :game
  
  %w{input valid_output description run_user_code}.each do |meth|
    delegate meth, :to => :flip_task
  end
  
  def solve(code)
    flip_task.validate_submission(code)
  end
  
  def flip_task
    @flip_task ||= name.constantize.new
  end
  
end
