class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :currPlayer
      t.boolean :winStatus
      t.string :winnerName
      t.integer :timeStamp
    
    
     
    end
  end
end
