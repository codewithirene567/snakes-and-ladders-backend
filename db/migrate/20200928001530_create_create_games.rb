class CreateCreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :create_games do |t|
      t.integer :currPlayer
      t.boolean :winStatus
      t.string  :allplayers
      t.string :winnerName
      t.string :timeStamp
    
      t.timestamps
    end
  end
end
