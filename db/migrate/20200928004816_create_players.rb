class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :currentPostion
      t.integer :id
      t.integer :gameId

      t.timestamps
    end
  end
end
