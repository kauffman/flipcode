class Game < ActiveRecord::Base

  has_many :teams
  has_many :flips

  def self.open
    find_by_status(:open)
  end

  def flip_for(turn)
    flips[turn - 1]
  end

  def set_up_flips
    BaseFlip.flips.shuffle.first(teams.first.players_count).each do |flip|
      flips.create(:name => flip.to_s)
    end
  end
end
