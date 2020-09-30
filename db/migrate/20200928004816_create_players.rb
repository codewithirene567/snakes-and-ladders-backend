class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :currentPostion
      t.integer :timeStamp
      t.integer :playerId
      #game_id integer

     
    end
  end
end
