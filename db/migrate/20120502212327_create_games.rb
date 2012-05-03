class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :status, :default => 'open'
      t.timestamps
    end
  end
end
