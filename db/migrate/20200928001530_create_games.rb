class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :currPlayer
      t.boolean :winStatus
      t.string :winnerName
      t.string :timeStamp
      t.integer :gameId
    
      t.timestamps
    end
  end
end
