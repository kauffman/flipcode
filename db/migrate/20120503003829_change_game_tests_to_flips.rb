class ChangeGameTestsToFlips < ActiveRecord::Migration
  def up
    rename_table :game_tests, :flips
  end

  def down
    rename_table :flips, :game_tests
  end
end
