class CreateRaceUsers < ActiveRecord::Migration
  def change
    create_table :race_users do |t|
      t.integer :race_id
      t.integer :user_id
      t.boolean :approved
      t.timestamps
    end
  end
end
