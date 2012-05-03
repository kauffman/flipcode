class Game < ActiveRecord::Base

  has_many :teams, :order => 'created_at'
  belongs_to :winning_team, :class_name => "Team", :foreign_key => :winning_team_id
  has_many :flips

  def self.open
    find(:first, :conditions => {:status => :open}, :order => "updated_at desc")
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
    BaseFlip.flips.shuffle.first(teams.first.players_count).each do |flip|
      flips.create(:name => flip.to_s)
    end
  end
end
