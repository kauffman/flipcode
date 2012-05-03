class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :status, :default => 'open'
      t.integer :winning_team_id
      t.timestamps
    end
  end
end
