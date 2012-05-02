class Game < ActiveRecord::Base

  attr_accessible :t1_id, :t2_id

  belongs_to :team_1, :class_name => "Team", :foreign_key => :t1_id
  belongs_to :team_2, :class_name => "Team", :foreign_key => :t2_id
  has_many :game_tests

  after_create :setup_tests
  
  
private
  def setup_tests
    # scan through the tests directory and create GameTest
    
  end
  
  
end
