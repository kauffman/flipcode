class MoreDatabaseShits < ActiveRecord::Migration
  def up
    add_column :games, :t1_id,  :integer
    add_column :games, :t2_id,  :integer
    add_column :games, :t1_pos, :integer
    add_column :games, :t2_pos, :integer
    add_column :games, :status, :string    

    create_table :game_tests do |t|
      t.string :test_class
      t.integer :order
      t.timestamps
    end
    
  end

  def down                        
    remove_column :games, :t1_id 
    remove_column :games, :t2_id 
    remove_column :games, :t1_pos
    remove_column :games, :t2_pos
    remove_column :games, :open
    drop_table :game_tests
  end
end
