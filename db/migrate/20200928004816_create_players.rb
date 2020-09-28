class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :currentPostion
      t.timestamp :timeStamp
      t.integer :playerId

     
    end
  end
end
