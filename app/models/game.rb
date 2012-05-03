class Game < ActiveRecord::Base

  has_many :teams, :order => 'created_at'
  belongs_to :winning_team, :class_name => "Team", :foreign_key => :winning_team_id
  has_many :flips

  def self.open
    find_by_status(:open)
  end

  def flip_for(turn)
    flips[turn - 1]
  end
  
  def set_winner(team)
    self.winning_team = team
    self.status = "closed"
    self.save
  end

  def set_up_flips
    pp "ADAMDEBUG: set_up_flips", teams.first.players_count, BaseFlip.flips.shuffle.first(teams.first.players_count)
    BaseFlip.flips.shuffle.first(teams.first.players_count).each do |flip|
      pp "ADAMDEBUG: CREATE FLIP! #{flip.to_s}"
      flips.create(:name => flip.to_s)
    end
  end
end
