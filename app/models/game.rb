class Game < ActiveRecord::Base

  has_many :games
  has_many :flips

  after_create :set_up_flips

  def self.open
    find_by_status(:open)
  end
  
  
private

  def set_up_flips
    BaseFlip.flips.shuffle.first(player_count).each do |flip|
      flips.create(:name => flip.to_s)
    end
  end
end
