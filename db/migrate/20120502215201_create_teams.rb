class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :players_count
      t.integer :turn
      t.references :game
      t.timestamps
    end
  end
end
