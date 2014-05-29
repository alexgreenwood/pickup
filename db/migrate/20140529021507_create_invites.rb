class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.boolean :rsvp
      t.integer :game_id
      t.integer :user_id

      t.timestamps

    end
  end
end
