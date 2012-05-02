class Team < ActiveRecord::Base
  attr_accessible :name, :players_count

  def to_s
    name
  end

end
