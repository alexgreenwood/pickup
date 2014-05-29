class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id
      t.string :location
      t.time :time
      t.date :date
      t.string :sport

      t.timestamps

    end
  end
end
