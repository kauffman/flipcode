class AddGameIdToGameTests < ActiveRecord::Migration
  def up
    add_column :game_tests, :game_id, :integer
  end

  def down
    remove_column :game_tests, :game_id
  end
end
