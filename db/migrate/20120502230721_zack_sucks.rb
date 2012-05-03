class ZackSucks < ActiveRecord::Migration
  def up
    add_index :teams, :name, :unique => true
    change_column :games, :t1_pos, :integer, :default => 0
    change_column :games, :t2_pos, :integer, :default => 0
    
  end

  def down
    remove_index :teams, :name
  end
end
