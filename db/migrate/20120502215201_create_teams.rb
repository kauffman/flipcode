class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :players_count
      t.integer :turn, :default => 1
      t.integer :turn_attempts, :default => 0
      t.references :game
      t.timestamps
    end
  end
end
