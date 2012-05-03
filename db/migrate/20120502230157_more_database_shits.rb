class MoreDatabaseShits < ActiveRecord::Migration
  def up
    create_table :flips do |t|
      t.string :name
      t.references :game
      t.timestamps
    end
    
  end

  def down                        
    drop_table :flips
  end
end
